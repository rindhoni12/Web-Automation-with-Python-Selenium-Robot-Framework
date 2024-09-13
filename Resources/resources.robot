*** Settings ***
Library        OperatingSystem
Library        SeleniumLibrary
Resource       ../Data/test_data.robot

*** Variables ***
# ${variabl1e1}        my example variable 1
# ${variabl1e2}        my example variable 2

# This the element xpath
${GOOGLE-SEARCH-BAR}    //input[@title="Search2"] 
${DETIK_URL}        https://www.detik.com
${BROWSER}              chrome

# Translations
${data_dashboard_text}  Data Dashboard

# Elements
## Admin Landing Page 
${login_as_admin_btn}  xpath://html/body/section[2]/div[2]/a

## Admin Login Page
${login_submit_btn}    xpath://button[contains(@class, 'btn-primary')]

# @{LIST}        test1  test2  ttes3  test4

# &{Dictionary}        username=testuser1  password=demo1
# &{Dictionary2}        username=testuser2  password=demo2


*** Keywords ***
# Log My Username
#     [Arguments]        ${USERNAME}
#     Log                ${USERNAME}

# Log My Password
#     [Arguments]        ${PASSWORD}
#     Log                ${PASSWORD}

# Log My Spesific Username and Password
#     [Arguments]        ${USERNAME}  ${PASSWORD}
#     Log My Username    ${USERNAME}
#     Log My Password    ${PASSWORD}

User login to admin dashboard with data
    [Arguments]                 ${ACCOUNT}
    Open Browser                ${ARTHA_MAS_URL}  ${BROWSER}
    Maximize Browser Window
    Sleep                       3s
    Click Element               ${login_as_admin_btn}
    Sleep                       3s
    Input Text                  id:username  ${ACCOUNT}[username]
    Input Text                  id:password  ${ACCOUNT}[password]
    Sleep                       3s
    Click Element               ${login_submit_btn}
    Sleep                       5s

User wait for
    [Arguments]        ${SECONDS}
    Sleep              ${SECONDS}