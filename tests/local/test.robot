*** Settings ***
Resource  ../../resource/testlink.robot

*** Variables ***
*** Test Cases ***

test
    open browser  http://127.0.0.1  ff
    Title Should Be  TestLink
    close browser