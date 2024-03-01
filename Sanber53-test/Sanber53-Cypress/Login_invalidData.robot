*** Settings ***
Library            AppiumLibrary

*** Variables ***


*** Keywords ***
Open Flight Application
        Open Application        remote_url=http://localhost:4723/wd/hub    
        ...                     platformName=android    
        ...                     platformVersion=9.0    
        ...                     deviceName=Pixel 2 XL API 34    
        ...                     appium:apppackage=com.example.myapplication    
        ...                     appium:mainactivity=com.example.myapplication.mainactivity
    
Click Sign in Button on Home Page
        Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
Input Username
        Wait Until Page Contains Element     locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
        Input Text                           locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    
        ...                                  text=support@ngendigital
Input Password
        Input text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]       text=abc123
Click Sign in on Login Page
        Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
verify User is Failed to Logged in
        Wait Until Page Contains         text=invalid username/password
Close flight Application
        Close Application

*** Test Cases ***
login with invalid data
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username
    Input Password
    Click Sign in on Login Page
    Verify User is Failed to Logged in
    Close Application
