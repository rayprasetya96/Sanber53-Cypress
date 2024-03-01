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
        Input Text                                  locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    
        ...                                         text=support@ngendigital.com
Input Password
        Input text                       locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]       text=abc123
Click Sign in on Login Page
        Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
click book button on home Page
        Wait Until Page Does Not Contain Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]
        Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]    
click book button on booking page
        Wait Until Page Does Not Contain Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]
        Click Element                               locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]
click the price button
    Wait Until Page Contains Element               locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price4"]
    Click Element                               locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price4"]
click confirm order button
    Click Element                               locator=//android.widget.Button[@resource-id="com.example.myapplication:idconfirm"]
verify User is successfully booked new flight
    Wait Until Page Contains                    text=Your flight is booked.
Close Application
    Close Application
*** Test Cases ***
Booking a new flight
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username
    Input Password
    Click Sign in on Login Page
    click book button on home Page
    click book button on booking page
    click the price button
    verify User is successfully booked new flight
    Close Application

