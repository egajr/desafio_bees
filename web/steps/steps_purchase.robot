**Settings**


**Keywords**
That i access the soucedemo website with valid credentials
    Check Point Login Page
    Login Soucedemo E-Commerce  ${USER}[valid]  ${SECRET}[valid]

I choose the ${product} to buy
    Check Point Home Page
    Select Product  ${product}

Add it to the cart
    Check Point Product Page
    Add Product To Cart
    Access Cart
    Check Point Cart Page
    Go To Checkout

I must complete the purchase successfully
    Check Point Checkout Page
    Submit Info Checkout
    Finalize Checkout
    Logout Soucedemo E-Commerce
    Check Point Login Page