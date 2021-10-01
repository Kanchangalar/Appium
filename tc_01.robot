***Settings***
Library  AppiumLibrary

***Test Cases***
User should able to launch flipkart application
   [Tags]  01_tc
   Launch the flipkart application
   Open Search bar and search for Mobiles

***Keywords***
Launch the flipkart application
   Open Application  ${flip_srver}  platformName=${proj_name}  platformVersion=${version_device}  deviceName=${name_device}  appPackage=${app_package}  appActivity=${app_activity}  noReset=true

Open Search bar and search for Mobiles
   Wait until page contains  ${search_bar}  timeout=20s
   Click Text  ${search_bar}
   Wait until page contains element  ${input_bar}  timeout=20s
   Input Text  ${input_bar}  ${input_text}
   Wait until page contains  ${click_text}  timeout=20s
   Click Text  ${click_text}
   Swipe    461    1840    542    813
   Swipe    380    1954    461    752
   Swipe    578    1533    542    526

   
***Variables***
${flip_srver}  http://localhost:4723/wd/hub	
${name_device}  emulator-5554
${version_device}  9.0
${app_package}  com.flipkart.android
${app_activity}  com.flipkart.android.activity.HomeFragmentHolderActivity 
${proj_name}  Android 
${search_bar}  Search for Products, Brands and More
${input_text}  Mobiles
${click_text}  in Mobiles
${input_bar}  id=com.flipkart.android:id/search_autoCompleteTextView
