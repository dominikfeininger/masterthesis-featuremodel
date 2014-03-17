Rescuer_Mobile_App : Operating_System+ Core_Application :: _Rescuer_Mobile_App ;

Operating_System : WP_UI_Functionality WP_Core_Functionality :: Windows_Phone
	| Android_UI_Functionality Android_Core_Functionality :: Google_Android
	| iOS_UI_Functionality iOS_Core_Functionality :: Apple_iOS ;

WP_UI_Functionality : [WP_Report_Situation] :: _WP_UI_Functionality ;

WP_Core_Functionality : [WP_Distinguish_Situation] :: _WP_Core_Functionality ;

Core_Application : Context_Services+ Mobile_Core+ Business_Logic [Persistance] :: _Core_Application ;

Context_Services : [Network_Services] [Location_Services] [Device_Services] :: Hard_Sensing_Services
	| [Calendar_Service] [Contacts_Service] :: Soft_Sensing_Services ;

Network_Services : [Wifi_Service_Outside] [Cellular_Service] [Bluetooth_Service] :: _Network_Services ;

Location_Services : GPS
	| Wifi_Service_Inside ;

Device_Services : [Accelerometer_Service] [Gyroscope_Service] [Compass_Service] [Camera_Serviece] :: _Device_Services ;

Mobile_Core : [Wifi_Connection] [Data_Connection] :: Network ;

Persistance : [Database] [File_System] :: _Persistance ;

