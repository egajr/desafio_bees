**Settings**
Resource  ${EXECDIR}/config/base.robot
Resource  ${EXECDIR}/web/resources/general_keywords.robot
Resource  ${EXECDIR}/web/resources/data/data.robot
Resource  ${EXECDIR}/web/pages/login_page.robot
Resource  ${EXECDIR}/web/pages/home_page.robot
Resource  ${EXECDIR}/web/pages/product_page.robot
Resource  ${EXECDIR}/web/pages/cart_page.robot
Resource  ${EXECDIR}/web/pages/checkout_page.robot
Resource  ${EXECDIR}/web/steps/steps_definition.robot

**Variables**
${DEFAULT_TIMEOUT}  15
${BROWSER}          chromium
${HEADLESS}         false
${URL_BASE}         https://www.saucedemo.com/


**Keywords**
Start Session
    New Browser         ${BROWSER}      ${HEADLESS}          
    New Page            about:blank
    Set Viewport Size   1920    1080
    Go To               ${URL_BASE}

Close Session
    Close Browser