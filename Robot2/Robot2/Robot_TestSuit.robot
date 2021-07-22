*** Settings ***
Library     SeleniumLibrary 

Suite Setup       Log    I am inside Test Suit Setup    
Suite Teardown    Log    I am inside Test Suite Teardown        
Test Setup        Log    I am inside Test Setup
Test Teardown     Log    I am inside Test Teardown    

*** Test Cases ***
MyFiestTest
    Log    Hi Uday    
    
FirstSeleniumTest
    Open Browser    https://www.google.co.in/    chrome  
    Sleep    1   
    Input Text    name=q    SaiRam
    Sleep    1
    Click Button    name=btnK 
    Close Browser

SampleLoginTest
    
    [Documentation]    This is Sample Login Test
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Set Browser Implicit Wait    5
    Sleep           1
    LoginKW 
    Click Element   id=welcome    
    Click Element   link=Logout    
    Close Browser
    Log    Test Completed    
    Log    This Test was Executed by %{username} on %{os}    
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    Password=admin123

***Keywords***
LoginKW
    Input Text      id=txtUsername    @{CREDENTIALS}[0]
    Input Password  id=txtPassword    &{LOGINDATA}[Password]    
    Click Button    id=btnLogin

    
 