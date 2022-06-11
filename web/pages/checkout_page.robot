*** Variables ***
${title_page}  css=.title
${first_name}  id=first-name
${last_name}  id=last-name
${zip_code}  id=postal-code
${btn_continue}  id=continue
${btn_finish}  id=finish

*** Keywords ***
Check Point Checkout Page
    Validate Text  ${title_page}  CHECKOUT: YOUR INFORMATION

Submit Info Checkout
    ${NAME_FIRST}       FakerLibrary.FirstName
    ${NAME_LAST}        FakerLibrary.LastName
    ${POSTAL_CODE}      FakerLibrary.Postcode
    Fill Input Text     ${first_name}  ${NAME_FIRST}
    Fill Input Text     ${last_name}  ${NAME_LAST}
    Fill Input Text     ${zip_code}  ${POSTAL_CODE} 
    Click On Element    ${btn_continue}  

Finalize Checkout
    Validate Text  ${title_page}  CHECKOUT: OVERVIEW    
    Click On Element  ${btn_finish}
    Validate Text  ${title_page}   CHECKOUT: COMPLETE!