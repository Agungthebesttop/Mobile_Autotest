*** Settings ***
Library        AppiumLibrary

*** Variables ***
${REMOTE_URL}                http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}             Android
${PLATFORM_VERSION}          13.0
${DEVICE_NAME}               emulator-5554
${ACTIVITY_NAME}             com.example.myapplication.MainActivity
${PACKAGE_NAME}              com.example.myapplication

*** Keywords ***
Open Flight Application
    Open Application         ${REMOTE_URL}
            ...    platformName=${PLATFORM_NAME}
            ...    platformVersion=${PLATFORM_VERSION}
            ...    deviceName=${DEVICE_NAME}
            ...    automationName=UiAutomator2
            ...    newCommandTimeout=2500
            ...    appActivity=${ACTIVITY_NAME}
            ...    appPackage=${PACKAGE_NAME}
User Login with valid Credential
    Click Element       xpath=//*//android.widget.Button[1]
    Sleep               5s
    Input Text          xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.EditText[1]    support@ngendigital.com
    Input Password      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.EditText[2]    abc123
    Click Element       xpath=//*//android.widget.Button
User Book a Flight
    Sleep                2s
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.Button[2]
    Sleep                2s
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.Spinner[1]
    Sleep                2s
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]
    Sleep                2s
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.Spinner[2]
    Sleep                2s
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
    Sleep                2s
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.Spinner[3]
    Sleep                2s
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]
    Sleep                2S
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[1]
    Sleep                2s
    Click Element        xpath=//android.view.View[@content-desc="06 August 2019"]
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button[2]
    Sleep                2S
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[2]
    Sleep                2s
    Click Element        xpath=//android.view.View[@content-desc="09 August 2019"]
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button[2]
    Sleep                2s
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[1]
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.Button
    Sleep                3s
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TableLayout/android.widget.TableRow[3]/android.widget.Button[2]
    Click Element        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.Button


*** Test Cases ***
User Booking a Flight
    Open Flight Application
    User Login with valid Credential
    User Book a Flight

    	
    
    





   
