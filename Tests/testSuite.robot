*** Settings ***
Documentation        This is the first tes suites
Library           OperatingSystem
Resource          ../Resources/resources.robot

*** Test Cases ***
TEST1
    [Tags]        Testcase1
    Log My Spesific Username and Password  ${Dictionary}[username]  ${Dictionary}[password]
    Log    This the second one
    Log My Spesific Username and Password  ${Dictionary2}[username]  ${Dictionary2}[password]

TEST2
    [Tags]        Testcase2
    Log           This is a asample test cases