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
        Wait Until Page Does Not Contain Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
        Input Text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=support@ngendigital.com
Input Password
        Input text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]       text=abc123
Click Sign in on Login Page
        Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
Click Sign out Button on Home Page
        Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
        Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
Close flight Application
        Close Application

*** Test Cases ***
login with valid data
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username
    Input Password
    Click Sign in on Login Page
    Click Sign out Button on Home Page
    Close Application
