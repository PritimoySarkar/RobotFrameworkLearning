*** Settings ***

*** Test Cases ***
Argument demo keyword test
    Arguments demo keyword  rcv  acadey


Argument demo keyword test2
    Arguments demo keyword  rcv  testing


*** Keywords ***
Arguments demo keyword
    [Arguments]  ${arg1}  ${arg2}
    Log  ${arg1}
    Log  ${arg2}