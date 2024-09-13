*** Settings ***
Library        SeleniumLibrary
Resource       ../Resources/resources.robot  
Resource       ../Data/test_data.robot

*** Test Cases ***
Scenario: Verify 
    [Tags]                      @detik_get_1
    Open Browser                ${DETIK_URL}        ${BROWSER}
    Maximize Browser Window
    Sleep                       5s
    Click Element               id:dropdown-search
    Input Text                  id:CityAjax    motor
    Sleep                       3s
    Click Element               xpath:/html/body/div[1]/div/div/div/div[3]/div/div[2]/div[1]/div/form/button
    Sleep                       5s
    Click Element               id:kanal
    Sleep                       5s
    Click Element               xpath://*[@id="kanal"]/option[11]
    Element Text Should Be      class:media__subtitle    detikOto
    Close Browser