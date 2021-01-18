#!/usr/bin/env bash

echo '
#!/usr/bin/env bash

export TMP=`mktemp -d /tmp/cargoinstaller.XXXXXX`

echo "Installing cargo..."

ARCHIVE=`awk "/^ARCHIVE:/ {print NR + 1; exit 0; }" $0`

tail -n+$ARCHIVE $0 | tar -xz -C $TMP

CDIR=`pwd`

cd $TMP
./scripts/install.sh
cd $CDIR

echo "Installation complete!"
exit 0

ARCHIVE:' > installer

tar -cvz - SQL bin cargo.conf.default scripts >> installer
chmod 755 installer
