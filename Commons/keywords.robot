*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Filtrar por menor preco
    Wait Until Element Is Visible    xpath://select[@class='product_sort_container']    timeout=1s
    Select From List By Value    class:product_sort_container    lohi    # Por exemplo, selecionar 'Price (low to high)'



Filtrar por Z-A
    Wait Until Element Is Visible    xpath://select[@class='product_sort_container']    timeout=1s
    Select From List By Value    class:product_sort_container    za    # Por exemplo, selecionar 'Price (low to high)'
Filtrar Por A-Z
    Wait Until Element Is Visible    xpath://select[@class='product_sort_container']    timeout=1s
    Select From List By Value    class:product_sort_container    az    # Por exemplo, selecionar 'Price (low to high)'

Acessar Carrinho
       Wait Until Element Is Visible    xpath://select[@class='shopping_cart_link']    timeout=1s
       Click Element    xpath://select[@class='shopping_cart_link']