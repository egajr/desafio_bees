*** Variables ***
${title_page}  css=.title
${checkout_btn}  css=.checkout_button
${remove_cart_btn}   css=.btn_small

*** Keywords ***
Check Point Cart Page
    Validate Text  ${title_page}  YOUR CART

Go To Checkout
    Wait For Elements State  ${remove_cart_btn}  visible  ${DEFAULT_TIMEOUT}
    Click On Element  ${checkout_btn}    