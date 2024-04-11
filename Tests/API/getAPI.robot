*** Settings ***
Library           RequestsLibrary
Library           Collections

*** Test Cases ***
Teste de chamada GET para o Pokémon 25
    [Documentation]    Testa a chamada GET para o Pokémon 25 na PokeAPI
    Create Session    PokeAPI    https://pokeapi.co/api/v2
    ${response}   Get on Session     PokeAPI    /pokemon/25
    Should Be Equal As Numbers    ${response.status_code}    200 
    ${json_data}    Set Variable    ${response.json()}  
    ${forms}    Get From Dictionary    ${json_data}    forms     n/a
    ${pokenome}    Get from Dictionary    ${forms}[0]    name    n/a
       Should Be Equal As Strings    ${pokenome}     pikachu
    Log    O nome do Pokémon é: ${pokenome}    console=True
    Log    ${response.content}     

