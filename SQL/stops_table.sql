CREATE TABLE IF NOT EXISTS `stops` (
  `row_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Record_Type` varchar(12) Not NULL,
  `Gateway_Name` varchar(27) NOT NULL DEFAULT '0',
  `Accounting_ID` varchar(20) NOT NULL,
  `AI_Shelf` int(16) NOT NULL,
  `AI_Boot_Count` int(16) NOT NULL,
  `AI_Call_Id` varchar(32) NOT NULL,
  `Start_Time_in_System_Ticks` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Node_Time_Zone` varchar(23) NOT NULL DEFAULT '0',
  `Start_Date` varchar(10) NOT NULL DEFAULT '0',
  `Start_Time` varchar(10) NOT NULL DEFAULT '0',
  `Policy_Server_Response_Setup_time` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Receipt_of_Alerting_ProcProg_Setup_Time` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Service_Established_Setup_Time` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Disconnect_Date` varchar(10) NOT NULL DEFAULT '0',
  `Disconnect_Time` varchar(10) NOT NULL DEFAULT '0',
  `Disconnect_to_Completion_of_Call_Time` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Call_Service_Duration` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Call_Disconnect_Reason` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Service_Delivered` varchar(22) NOT NULL DEFAULT '0',
  `Call_Direction` varchar(12) NOT NULL DEFAULT '0',
  `Service_Provider` varchar(23) NOT NULL DEFAULT '0',
  `Transit_Network_Selection_Code` varchar(4) NOT NULL DEFAULT '0',
  `Calling_Number` varchar(30) NOT NULL DEFAULT '0',
  `Called_Number` varchar(30) NOT NULL DEFAULT '0',
  `Extra_Called_Number_Address_Digits` varchar(30) NOT NULL DEFAULT '0',
  `Number_of_Called_Num_Translations_Done_by_This_Node` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Called_Number_Before_Translation_1` varchar(30) NOT NULL DEFAULT '0',
  `Translation_Type_1` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Called_Number_Before_Translation_2` varchar(30) NOT NULL DEFAULT '0',
  `Translation_Type_2` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Billing_Number` varchar(30) NOT NULL DEFAULT '0',
  `Route_Label` varchar(32) NOT NULL DEFAULT '0',
  `Route_Attempt_Number` int(1) unsigned NOT NULL DEFAULT '0',
  `Route_Selected` varchar(51) DEFAULT NULL,
  `RS_Gateway` varchar(27) DEFAULT NULL,
  `RS_Trunkgroup` varchar(23) DEFAULT NULL,
  `Egress_Local_Signaling_IP_Addr` varchar(15) NOT NULL DEFAULT '0',
  `Egress_Remote_Signaling_IP_Addr` varchar(15) NOT NULL DEFAULT '0',
  `Ingress_Trunk_Group_Name` varchar(23) NOT NULL DEFAULT '0',
  `Ingress_PSTN_Circuit_End_Point` varchar(38) NOT NULL DEFAULT '0',
  `Ingress_IP_Circuit_End_Point` varchar(43) NOT NULL DEFAULT '0',
  `IIPE_local` varchar(21) NOT NULL,
  `IIPE_remote`varchar(21) NOT NULL,
  `Egress_PSTN_Circuit_End_Point` varchar(38) NOT NULL DEFAULT '0',
  `Egress_IP_Circuit_End_Point` varchar(43) NOT NULL DEFAULT '0',
  `EIPE_local` varchar(21) NOT NULL,
  `EIPE_remote`varchar(21) NOT NULL,
  `Ingress_DSP_Audio_Bytes_Sent` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_DSP_Audio_Packets_Sent` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_DSP_Audio_Bytes_Received` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_DSP_Audio_Packets_Received` bigint(1) unsigned NOT NULL DEFAULT '0',
  `OLIP` smallint(1) unsigned NOT NULL DEFAULT '0',
  `JIP` varchar(15) NOT NULL DEFAULT '0',
  `Carrier_Code` varchar(5) NOT NULL DEFAULT '0',
  `Call_Group_ID` varchar(12) NOT NULL DEFAULT '0',
  `Script_Log_Data` varchar(95) NOT NULL DEFAULT '0',
  `Time_Exit_Msg_Receipt` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Time_Exit_Msg_Generation` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Calling_Party_Nature_of_Addr` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Called_Party_Nature_of_Addr` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_Protocol_Variant_Spec_Data` varchar(814) NOT NULL DEFAULT '0',
  `IPVSD_Protocol_Variant` varchar(5) DEFAULT NULL,
  `IPVSD_Call_ID` text DEFAULT NULL,
  `IPVSD_From` text DEFAULT NULL,
  `IPVSD_To` text DEFAULT NULL,
  `IPVSD_Blank_Field` text default NULL,
  `IPVSD_SIP_T_Version` text default NULL,
  `IPVSD_SIP_URI_PAI_Display_Name` text default NULL,
  `IPVSD_P_K_CallFwdLast_User_Param` text default NULL,
  `IPVSD_SIP_Req_URI_User_Host` text default NULL,
  `IPVSD_SIP_URI_PAI_User_Host` text default NULL,
  `IPVSD_Proxy_Auth_Username` text default NULL,
  `IPVSD_Tel_URI_PAI_Display_Name` text default NULL,
  `IPVSD_Invite_Contact_Header` text default NULL,
  `IPVSD_200_OK_Invite_Contact_Header` text default NULL,
  `IPVSD_P_K_CallFwdOrig_Redir_Reason` text default NULL,
  `IPVSD_Tel_URI_PAI_User_Name` text default NULL,
  `IPVSD_P_Sig_Info_Contractor_Num` text default NULL,
  `IPVSD_ACK_Rxd_for_200_OK` text default NULL,
  `IPVSD_Status_Msg_for_Call_Release` text default NULL,
  `IPVSD_Reason_Header_Value_Q850` text default NULL,
  `IPVSD_NAPT_Status_Signaling` text default NULL,
  `IPVSD_NAPT_Status_Media` text default NULL,
  `IPVSD_NAPT_Orig_Peer_SDP_Addr` text default NULL,
  `IPVSD_UUI_Sending_Count` text default NULL,
  `IPVSD_UUI_Receiving_Count` text default NULL,
  `IPVSD_Service_Info` text default NULL,
  `IPVSD_ICID` text default NULL,
  `IPVSD_Gend_Host` text default NULL,
  `IPVSD_Orig_IOI` text default NULL,
  `IPVSD_Term_IOI` text default NULL,
  `IPVSD_Special_Routing_Table_Num` text default NULL,
  `IPVSD_IP_Address_For_FQDN_Call` text default NULL,
  `IPVSD_SIP_Transport_Protocol` text default NULL,
  `IPVSD_Direct_Media` text default NULL,
  `IPVSD_Inbound_SMM_Indicator` text default NULL,
  `IPVSD_Outbound_SMM_Indicator` text default NULL,
  `IPVSD_Originating_Charge_Area` text default NULL,
  `IPVSD_Terminating_Charge_Area` text default NULL,
  `IPVSD_Feature_Tag_Contact` text default NULL,
  `IPVSD_Feature_Tag_Accept_Contact` text default NULL,
  `IPVSD_P_Charging_Function_Address` text default NULL,
  `IPVSD_P_Called_Party_Id` text default NULL,
  `IPVSD_P_Visited_Network_Id` text default NULL,
  `IPVSD_Direct_Media_with_NAPT_Call` text default NULL,
  `IPVSD_Inbound_SMM_Profile_Name` text default NULL,
  `IPVSD_Outbound_SMM_Profile_Name` text default NULL,
  `Ingress_Signaling_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_Signaling_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_Far_End_Switch_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_Far_End_Switch_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Far_End_Ingress_TG_Carrier_Code` varchar(5) NOT NULL DEFAULT '0',
  `Far_End_Egress_TG_Carrier_Code` varchar(5) NOT NULL DEFAULT '0',
  `Calling_Party_Category` varchar(6) NOT NULL DEFAULT '0',
  `Dialed_Number` varchar(30) NOT NULL DEFAULT '0',
  `Carrier_Selection_Information` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Called_Number_Numbering_Plan` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Generic_Address_Parameter` varchar(30) NOT NULL DEFAULT '0',
  `Disconnect_Initiator` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_Number_Packets_Lost` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_Interarrival_Packet_Jitter` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_Last_Measurement_for_Latency` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_Trunk_Group_Name` varchar(23) NOT NULL DEFAULT '0',
  `Egress_Protocol_Variant_Spec_Data` varchar(814) NOT NULL DEFAULT '0',
  `EPVSD_Protocol_Variant` varchar(5) DEFAULT NULL,
  `EPVSD_Call_ID`text DEFAULT NULL,
  `EPVSD_From`text DEFAULT NULL,
  `EPVSD_To` text DEFAULT NULL,
  `EPVSD_Blank_Field` text default NULL,
  `EPVSD_SIP_T_Version` text default NULL,
  `EPVSD_SIP_URI_PAI_Display_Name` text default NULL,
  `EPVSD_P_K_CallFwdLast_User_Param` text default NULL,
  `EPVSD_SIP_Req_URI_User_Host` text default NULL,
  `EPVSD_SIP_URI_PAI_User_Host` text default NULL,
  `EPVSD_Proxy_Auth_Username` text default NULL,
  `EPVSD_Tel_URI_PAI_Display_Name` text default NULL,
  `EPVSD_Invite_Contact_Header` text default NULL,
  `EPVSD_200_OK_Invite_Contact_Header` text default NULL,
  `EPVSD_P_K_CallFwdOrig_Redir_Reason` text default NULL,
  `EPVSD_Tel_URI_PAI_User_Name` text default NULL,
  `EPVSD_P_Sig_Info_Contractor_Num` text default NULL,
  `EPVSD_ACK_Rxd_for_200_OK` text default NULL,
  `EPVSD_Status_Msg_for_Call_Release` text default NULL,
  `EPVSD_Reason_Header_Value_Q850` text default NULL,
  `EPVSD_NAPT_Status_Signaling` text default NULL,
  `EPVSD_NAPT_Status_Media` text default NULL,
  `EPVSD_NAPT_Orig_Peer_SDP_Addr` text default NULL,
  `EPVSD_UUI_Sending_Count` text default NULL,
  `EPVSD_UUI_Receiving_Count` text default NULL,
  `EPVSD_Service_Info` text default NULL,
  `EPVSD_ICID` text default NULL,
  `EPVSD_Gend_Host` text default NULL,
  `EPVSD_Orig_IOI` text default NULL,
  `EPVSD_Term_IOI` text default NULL,
  `EPVSD_Special_Routing_Table_Num` text default NULL,
  `EPVSD_IP_Address_For_FQDN_Call` text default NULL,
  `EPVSD_SIP_Transport_Protocol` text default NULL,
  `EPVSD_Direct_Media` text default NULL,
  `EPVSD_Inbound_SMM_Indicator` text default NULL,
  `EPVSD_Outbound_SMM_Indicator` text default NULL,
  `EPVSD_Originating_Charge_Area` text default NULL,
  `EPVSD_Terminating_Charge_Area` text default NULL,
  `EPVSD_Feature_Tag_Contact` text default NULL,
  `EPVSD_Feature_Tag_Accept_Contact` text default NULL,
  `EPVSD_P_Charging_Function_Address` text default NULL,
  `EPVSD_P_Called_Party_Id` text default NULL,
  `EPVSD_P_Visited_Network_Id` text default NULL,
  `EPVSD_Direct_Media_with_NAPT_Call` text default NULL,
  `EPVSD_Inbound_SMM_Profile_Name` text default NULL,
  `EPVSD_Outbound_SMM_Profile_Name` text default NULL,
  `Incoming_Calling_Number` varchar(30) NOT NULL DEFAULT '0',
  `AMA_Call_Type` varchar(3) NOT NULL DEFAULT '0',
  `Message_Billing_Index` varchar(3) NOT NULL DEFAULT '0',
  `Originating_LATA` varchar(3) NOT NULL DEFAULT '0',
  `Route_Index_Used` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Calling_Party_Number_Presentation_Restriction` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Incoming_ISUP_Charge_Number` varchar(30) NOT NULL DEFAULT '0',
  `Incoming_ISUP_Charge_Number_NOA` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Dialed_Number_NOA` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_Codec_Type` varchar(6) NOT NULL DEFAULT '0',
  `ICT_Network_Type` varchar(1)  DEFAULT NULL,
  `ICT_Codec_Type` varchar(2)  DEFAULT NULL,
  `ICT_Audio_Encoding_Type` varchar(1)  DEFAULT NULL,
  `Egress_Codec_Type` varchar(6) NOT NULL DEFAULT '0',
  `ECT_Network_Type` varchar(1)  DEFAULT NULL,
  `ECT_Codec_Type` varchar(2)  DEFAULT NULL,
  `ECT_Audio_Encoding_Type` varchar(1)  DEFAULT NULL,
  `Ingress_RTP_Packetization_Time` smallint(1) unsigned NOT NULL DEFAULT '0',
  `GSX_NBS_Call_ID` varchar(12) NOT NULL DEFAULT '0',
  `Originator_Echo_Cancellation` binary(1) NOT NULL DEFAULT '0',
  `Terminator_Echo_Cancellation` binary(1) NOT NULL DEFAULT '0',
  `Charge_Flag` smallint(1) unsigned NOT NULL DEFAULT '0',
  `AMA_Service_Logic_Identification` varchar(9) NOT NULL DEFAULT '0',
  `AMA_BAF_Module` varchar(256) NOT NULL DEFAULT '0',
  `AMA_Set_Hex_AB_Indication` binary(1) NOT NULL DEFAULT '0',
  `Service_Feature_ID` varchar(3) NOT NULL DEFAULT '0',
  `FE_Parameter` varbinary(22) NOT NULL DEFAULT '0',
  `Satellite_Indicator` binary(1) NOT NULL DEFAULT '0',
  `PSX_Billing_Information` varbinary(256) NOT NULL DEFAULT '0',
  `Originating_TDM_Trunk_Group_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Terminating_TDM_Trunk_Group_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_Trunk_Member_Number` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_Trunk_Group_ID` varchar(12) NOT NULL DEFAULT '0',
  `Egress_Switch_ID` varchar(8) NOT NULL DEFAULT '0',
  `Ingress_Local_ATM_Addr`   tinyint(1) DEFAULT NULL,     
  `Ingress_Remote_ATM_Addr`  tinyint(1) DEFAULT NULL,    
  `Egress_Local_ATM_Addr`    tinyint(1) DEFAULT NULL,
  `Egress_Remote_ATM_Addr`   tinyint(1) DEFAULT NULL,
  `Policy_Response_Call_Type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Outgoing_Route_Identification` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Outgoing_Message_Identification` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Incoming_Route_Identification` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Calling_Name` varchar(25) NOT NULL DEFAULT '0',
  `Calling_Name_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Incoming_Calling_Party_Numbering_Plan` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Outgoing_Calling_Party_Numbering_Plan` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Calling_Party_Business_Group_ID` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Called_Party_Business_Group_ID` bigint(1) unsigned NOT NULL DEFAULT '0',
  `CgP_Public_Presence_Directory_Number` varchar(30) NOT NULL DEFAULT '0',
  `Time_Elapsed_Setup_Msg_RX_Last_Call_Rte_Att`   decimal(10,0) unsigned NOT NULL DEFAULT '0',
  `Billing_Number_NOA` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Incoming_Calling_Number_NOA` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_Trunk_Member_Number` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Selected_Route_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Telcordia_Long_Duration_Record_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Time_Elapsed_Prevous_Record` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Cumulative_Route_Index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Call_Disconnect_Reason_TX_Ingress` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Call_Disconnect_Reason_TX_Egress` smallint(1) unsigned NOT NULL DEFAULT '0',
  `ISDN_PRI_Calling_Party_Sub_Addr` varchar(30) NOT NULL DEFAULT '0',
  `Outgoing_Trunk_Group_Number_EXM` varchar(4) NOT NULL DEFAULT '0',
  `Ingress_Local_Signaling_IP_Addr` varchar(15) NOT NULL DEFAULT '0',
  `Ingress_Remote_Signaling_IP_Addr` varchar(15) NOT NULL DEFAULT '0',
  `Record_Sequence_Number` int(1) unsigned NOT NULL DEFAULT '0',
  `Transmission_Medium_Requirement` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Information_Transfer_Rate` smallint(1) unsigned NOT NULL DEFAULT '0',
  `USI_User_Information_Layer_1` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Unrecognized_Raw_ISUP_Calling_Party_Category` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_RLT_Feature_Spec_Data` varchar(598) NOT NULL DEFAULT '0',
  `two_B_Chan_Transfer_Feature_Spec_Data` varchar(72) NOT NULL DEFAULT '0',
  `Calling_Party_Business_Unit` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Called_Party_Business_Unit` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Redirection_Feature_Spec_Data` varchar(123) NOT NULL DEFAULT '0',
  `Ingress_RLT_Feature_Spec_Data` varchar(598) NOT NULL DEFAULT '0',
  `PSX_Index` smallint(1) unsigned NOT NULL DEFAULT '0',
  `PSX_Congestion_Level` smallint(1) unsigned NOT NULL DEFAULT '0',
  `PSX_Processing_Time` int(1) unsigned NOT NULL DEFAULT '0',
  `Script_Name` varchar(23) NOT NULL DEFAULT '0',
  `Ingress_External_Accounting_Data` varchar(128) NOT NULL DEFAULT '0',
  `Egress_External_Accounting_Data` varchar(128) NOT NULL DEFAULT '0',
  `Egress_RTP_Packetization_Time` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_DSP_Audio_Bytes_Sent` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_DSP_Audio_Packets_Sent` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_DSP_Audio_Bytes_Received` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_DSP_Audio_Packets_Received` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_Packets_Lost` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_Interarrival_Packet_Jitter` int(1) unsigned NOT NULL DEFAULT '0',
  `Egress_Last_Measurement_for_Latency` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_Maximum_Packet_Outage` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_Maximum_Packet_Outage` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_Packet_Playout_Buffer_Quality` varbinary(16) NOT NULL DEFAULT '0',
  `Egress_Packet_Playout_Buffer_Quality` varbinary(16) NOT NULL DEFAULT '0',
  `Call_Supervision_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_SIP_Refer_Replaces_Feature_Spec_Data` varchar(70) NOT NULL DEFAULT '0',
  `Egress_SIP_Refer_Replaces_Feature_Spec_Data` varchar(70) NOT NULL DEFAULT '0',
  `Network_Transfer_Feature_Spec_Data` varchar(54) NOT NULL DEFAULT '0',
  `Call_Condition` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Toll_Indicator` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Gen_Num_Number` varchar(30) NOT NULL DEFAULT '0',
  `Gen_Num_Presentation_Restriction_Indicator` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Gen_Num_Numbering_Plan` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Gen_Num_NOA` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Gen_Num_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Originating_Trunk_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Terminating_Trunk_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Remote_GSX_NBS_Billing_Indicator` binary(1) NOT NULL DEFAULT '0',
  `VPN_Calling_Private_Presence_Number` varchar(30) NOT NULL DEFAULT '0',
  `VPN_Calling_Public_Presence_Number` varchar(30) NOT NULL DEFAULT '0',
  `External_FCI` varchar(800) NOT NULL DEFAULT '0',
  `Ingress_Policing_Discards` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Egress_Policing_Discards` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Announcement_ID` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Source_Information` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Network_ID` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Partition_ID` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NCOS` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_SRTP` varchar(7) NOT NULL DEFAULT '0',
  `Egress_SRTP` varchar(7) NOT NULL DEFAULT '0',
  `ISDN_Access_Indicator_From_FCI` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Call_Disconnect_Location` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Call_Disconnect_Location_Tx_Ingress` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Call_Disconnect_Location_Tx_Egress` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Network_Call_Ref_Call_Identity` bigint(1) unsigned NOT NULL DEFAULT '0',
  `Network_Call_Ref_Signaling_PC` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Ingress_ISUP_MIME_Protocol_Variant_Spec_Data` varchar(814) NOT NULL DEFAULT '0',
  `Egress_ISUP_MIME_Protocol_Variant_Spec_Data` varchar(814) NOT NULL DEFAULT '0',
  `Modem_Tone_Type` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Modem_Tone_Signal_Level` smallint(1) unsigned NOT NULL DEFAULT '0',
  `Video_Codec_Data`      varchar(512) DEFAULT NULL,
  `Video_Codec_Statistics`      varchar(512) DEFAULT NULL,
  `SVS_Customer`  decimal(4,0) unsigned DEFAULT NULL,
  `SVS_Vendor` decimal(1,0) unsigned DEFAULT NULL ,
  `Call_To_Test_PSX` tinyint(1) DEFAULT NULL,
  `PSX_Overlap_Route_Requests` decimal(2,0) unsigned DEFAULT NULL ,
  `Call_Setup_Delay` varchar(21) DEFAULT NULL,
  `CSD_Request_Latency` int(3) DEFAULT NULL,
  `CSD_Downstream_Latency` int(5) DEFAULT NULL,
  `CSD_Response_Latency` int(3) DEFAULT NULL,
  `CSD_Total_Latency` int(5) DEFAULT NULL,
  `Overload_Status` decimal(3,0) unsigned DEFAULT NULL,
  `Ingress_BICC_Info` varchar(36) DEFAULT NULL ,
  `Egress_BICC_Info` varchar(36) DEFAULT NULL ,
  `Ingress_DSP_Data` varchar(4) DEFAULT NULL ,
  `IDD_RFC2833_TX_enabled` tinyint(1) DEFAULT NULL,
  `IDD_RFC2833_RX_enabled` tinyint(1) DEFAULT NULL,
  `IDD_RFC2833_packets_TX` tinyint(1) DEFAULT NULL,
  `IDD_RFC2833_packets_RX` tinyint(1) DEFAULT NULL,
  `IDD_OOB_messaging_enabled` tinyint(1) DEFAULT NULL,
  `IDD_OOB_packets_TX` tinyint(1) DEFAULT NULL,
  `IDD_OOB_packets_RX` tinyint(1) DEFAULT NULL,
  `IDD_DTMF_tone_det_enabled` tinyint(1) DEFAULT NULL,
  `IDD_DTMF_remove_enabled` tinyint(1) DEFAULT NULL,
  `IDD_DTMF_digits_detected` tinyint(1) DEFAULT NULL,
  `IDD_SIDs_Pkts_TX` tinyint(1) DEFAULT NULL,
  `IDD_SIDs_Pkts_RX` tinyint(1) DEFAULT NULL,
  `IDD_ECM_used` tinyint(1) DEFAULT NULL,
  `Egress_DSP_Data` varchar(4) DEFAULT NULL ,
  `EDD_RFC2833_TX_enabled` tinyint(1) DEFAULT NULL,
  `EDD_RFC2833_RX_enabled` tinyint(1) DEFAULT NULL,
  `EDD_RFC2833_packets_TX` tinyint(1) DEFAULT NULL,
  `EDD_RFC2833_packets_RX` tinyint(1) DEFAULT NULL,
  `EDD_OOB_messaging_enabled` tinyint(1) DEFAULT NULL,
  `EDD_OOB_packets_TX` tinyint(1) DEFAULT NULL,
  `EDD_OOB_packets_RX` tinyint(1) DEFAULT NULL,
  `EDD_DTMF_tone_det_enabled` tinyint(1) DEFAULT NULL,
  `EDD_DTMF_remove_enabled` tinyint(1) DEFAULT NULL,
  `EDD_DTMF_digits_detected` tinyint(1) DEFAULT NULL,
  `EDD_SIDs_Pkts_TX` tinyint(1) DEFAULT NULL,
  `EDD_SIDs_Pkts_RX` tinyint(1) DEFAULT NULL,
  `EDD_ECM_used` tinyint(1) DEFAULT NULL,
  `Call_Recorded_Indicator` varchar(3) DEFAULT NULL,
  `Call_Recorded_RTP_Tx_IP_Address` varchar(15) DEFAULT NULL,
  `Call_Recorded_RTP_Tx_Port_Number` int(5) DEFAULT NULL,
  `Call_Recorded_RTP_Rv_IP_Address` varchar(15) DEFAULT NULL,
  `Call_Recorded_RTP_Rv_Port_Number` int(5) DEFAULT NULL,
  `MLPP_Precedence_Level` decimal(1,0) unsigned DEFAULT NULL,
  `MSRP_Service_Type_Field` decimal(1,0) unsigned DEFAULT NULL,
  `NPUKK_Special_Routing_Information` varchar(16) DEFAULT NULL,
  `NPUKK_Customer_or_Carrier_ID` int(5) default NULL,
  `NPUKK_Service_Type_Identifier` int(3) default NULL,
  `NPSSP_Special_Handling_Info` varchar(16) DEFAULT NULL,
  `NPSSP_Service_Type_Identifier` int(3) default NULL,
  `Total_ITX_Change_Units` int(5) default NULL,
  `Global_Charge_Reference` varchar(40) DEFAULT NULL,
  `IP_Call_Limit_at_Ingress_SIP_Peer`  tinyint(1) DEFAULT NULL,
  `IP_Call_Limit_at_Ingress_IPTG`  tinyint(1) DEFAULT NULL,
  `IP_BW_Limit_at_Ingress_IPTG`  tinyint(1) DEFAULT NULL,
  `IP_Call_Limit_at_Egress_SIP_Peer`  tinyint(1) DEFAULT NULL,
  `IP_Call_Limit_at_Egress_IPTG`  tinyint(1) DEFAULT NULL,
  `IP_BW_Limit_at_Egress_IPTG`  tinyint(1) DEFAULT NULL,
  `PSX_Name` varchar(24) DEFAULT NULL,
  `No_of_PSX_tried` int(4) default NULL,
  `Ingress_Inbound_R_Factor` int(2) default NULL,
  `Egress_Inbound_R_Factor` int(2) default NULL,
  `Ingress_Outbound_R_Factor` int(2) default NULL,
  `Egress_Outbound_R_Factor` int(2) default NULL,
  `Media_Stream_Data` varchar(1552) DEFAULT NULL,
  `Media_Stream_Stats` varchar(1414) DEFAULT NULL,
  `Transcode_Indicator` int(1) default NULL,
  `HD_Codec_Rate` int(2) default NULL,
  `Remote_Ingress_Audio_RTCP_Learned_Metrics` varchar(1024) DEFAULT NULL,
  `Remote_Egress_Audio_RTCP_Learned_Metrics` varchar(1024) DEFAULT NULL,
  `Final_Route_Label` varchar(32) DEFAULT NULL,
  `MTA_Information` varchar(32) DEFAULT NULL,
  `VBR_Common_Billing_Data` varchar(32) DEFAULT NULL,
  `VBR_Route_Billing_Data` varchar(32) DEFAULT NULL,

  PRIMARY KEY (`row_id`),
  UNIQUE KEY `Accounting_ID` (`Accounting_ID`),
  KEY `Called_Number` (`Called_Number`),
  KEY `Dialed_Number` (`Dialed_Number`),
  KEY `Calling_Number` (`Calling_Number`),
  KEY `Billing_Number` (`Billing_Number`),
  KEY `Ingress_Trunk_Group_Name` (`Ingress_Trunk_Group_Name`),
  KEY `Egress_Trunk_Group_Name` (`Egress_Trunk_Group_Name`),
  KEY `GSX_NBS_Call_ID` (`GSX_NBS_Call_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
