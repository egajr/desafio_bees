*** Variables ***
${title_page}  css=.title
${list_itens}   css=#inventory_container .inventory_list .inventory_item
${bmenu_btn}    id=react-burger-menu-btn
${logout_link}  id=logout_sidebar_link

*** Keywords ***
Check Point Home Page
    Validate Text  ${title_page}   PRODUCTS

Select Product
    [Arguments]  ${product}
    Click On Element  xpath=//a/div[contains(., '${product}')]

Logout Soucedemo E-Commerce
    Click On Element  ${bmenu_btn}
    Click On Element  ${logout_link}
    