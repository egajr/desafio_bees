*** Variables ***
${add_cart_btn}  css=.btn_primary
${remove_cart_btn}   css=.btn_small
${cart}     css=#shopping_cart_container
${back_products}  css=#back-to-products


*** Keywords ***
Check Point Product Page
    Wait For Elements State  ${back_products}  visible  timeout=${DEFAULT_TIMEOUT}  message=This is not the product page

Add Product To Cart
    Click On Element  ${add_cart_btn}
    Wait For Elements State  ${remove_cart_btn}  visible  ${DEFAULT_TIMEOUT}

Access Cart    
    Click On Element  ${cart} 