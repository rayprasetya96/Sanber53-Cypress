*** Settings ***

*** Test Cases ***
login with valid data
    Open Flight Application
    Click Sign in Button on Home Page
    Input Username
    Input Password
    Click Sign in on Login Page
    Verify User is Successfully Logged in
    Close Application
