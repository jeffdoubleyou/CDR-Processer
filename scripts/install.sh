#!/usr/bin/env bash


. "scripts/shini.sh"

OS=`uname`

read -p "Install location: [/usr/local/cargo]: " InstallLoc
InstallLoc=${InstallLoc:-/usr/local/cargo}

read -p "Location of ACT files: [/cdr]: " FileDir
FileDir=${FileDir:-/cdr}

echo -n "Directory $FileDir exists: "
if [ -d $FileDir ]; then
    echo "OK"
else
    echo "FAIL"
    exit 1
fi

read -p "MySQL host: [127.0.0.1]: " DB_HOST
DB_HOST=${DB_HOST:-127.0.0.1}

read -p "MySQL user: [root]: " DB_USER
DB_USER=${DB_USER:-root}

read -s -p "MySQL password: [empty]: " DB_PASS
echo ""

read -p "MySQL database: [cdr]: " DB_DATABASE
DB_DATABASE=${DB_DATABASE:-cdr}

read -p "Create Database Tables? [y/N]: " CREATE_TABLES

if [ $CREATE_TABLES = y ]; then
    echo "Creating database tables in $DB_DATABASE";
    mysql -h$DB_HOST -u$DB_USER -p$DB_PASS -D$DB_DATABASE < SQL/attempts_table.sql >> /dev/null 2>&1
    mysql -h$DB_HOST -u$DB_USER -p$DB_PASS -D$DB_DATABASE < SQL/starts_table.sql >> /dev/null 2>&1
    mysql -h$DB_HOST -u$DB_USER -p$DB_PASS -D$DB_DATABASE < SQL/stops_table.sql >> /dev/null 2>&1
fi

DSN="$DB_USER:$DB_PASS@tcp($DB_HOST:3306)/$DB_DATABASE"

if [ -d $InstallLoc ]; then
    echo "Install location $InstallLoc already exists."
else
    mkdir -p $InstallLoc
fi

cp cargo.conf.default $InstallLoc/cargo.conf

shini_write "$InstallLoc/cargo.conf" "required" "FileDir" "$FileDir"
shini_write "$InstallLoc/cargo.conf" "required" "DSN" "$DSN"

if [ $OS = "Linux" ]; then
    echo "Installing Linux binary to $InstallLoc"
    cp bin/cargo_linux $InstallLoc/cargo
    chmod 755 $InstallLoc/cargo

    SYSTEMCTL=$(which systemctl)
    INITCTL=$(which initctl)

    if [ ! -z "$INITCTL" ]; then
        echo "Installing upstart service"
        cp scripts/init /etc/init/cargo.conf
        initctl reload-configuration
        initctl start cargo
    elif [ ! -z "$SYSTEMCTL" ]; then
        echo "Installing systemd service"
        cp scripts/systemd /etc/systemd/system/cargo.service
        systemctl daemon-reload
        systemctl enable myservice
        systemctl start cargo
    else
        echo "No sys-v support implemented, please manually run the daemon from the $InstallLoc directory"
    fi
elif [ $OS = "Darwin" ]; then
    echo "Installing OSX binary to $InstallLoc"
    cp bin/cargo_osx $InstallLoc/cargo
    chmod 755 $InstallLoc/cargo
else
    echo "Unknown operating system $OS - please build from source and install manually"
fi
   
echo "Cargo installed in $InstallLoc - Edit cargo.conf for additional settings"
