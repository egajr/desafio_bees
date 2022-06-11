**Settings**
Resource  ${EXECDIR}/web/resources/base_web.robot

Test Setup  Start Session
Test Teardown  Close Session

**Test Cases**
I must complete the purchase successfully
    GIVEN That i access the soucedemo website with valid credentials
    WHEN I choose the Fleece Jacket to buy 
    AND Add it to the cart
    THEN I must complete the purchase successfully