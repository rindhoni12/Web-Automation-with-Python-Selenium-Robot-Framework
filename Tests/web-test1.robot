*** Settings ***
Library        SeleniumLibrary
Resource       ../Resources/resources.robot  
Resource       ../Data/test_data.robot

*** Test Cases ***
WEB Test 1
    [Tags]                      web_test_1    
    Open Browser                http://google.com/        chrome
    Maximize Browser Window
    Sleep                       5s
    Close Browser

WEB Test 2
    [Tags]                      web_test_2
    Open Browser                http://google.com/        firefox
    Maximize Browser Window
    Sleep                       5s
    Close Browser

Scenario: Verify user able to login to admin dashboard
    [Tags]                      ama_login_scenario
    Open Browser                ${ARTHA_MAS_URL}        ${BROWSER}
    Maximize Browser Window
    Sleep                       3s
    Click Element               xpath://html/body/section[2]/div[2]/a
    Sleep                       3s
    Input Text                  id:username    admin
    Input Text                  id:password    admin123
    Sleep                       3s
    Click Element               xpath://button[contains(@class, 'btn-primary')]
    Sleep                       5s
    Element Should Be Visible   xpath://h1
    Element Text Should Be      xpath://h1    ${data_dashboard_text}
    Close Browser

Scenario: Verify user able to login to admin dashboard
    [Tags]  @ama_login_scenario_using_precondition
    Given User login to admin dashboard with data  ${admin_account}
    When User wait for  5s
    # Then Element Should Be Visible  xpath://h1
    Then Element Text Should Be  xpath://h1  ${data_dashboard_text}
    And User wait for  5s
    And Close Browser