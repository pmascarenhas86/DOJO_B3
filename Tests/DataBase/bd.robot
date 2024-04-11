*** Settings ***
Library    DatabaseLibrary

*** Variables ***
${DB_DRIVER}    com.microsoft.sqlserver.jdbc.SQLServerDriver
${DB_URL}       jdbc:sqlserver://<hostname>:<port>;databaseName=<database_name>
${DB_USERNAME}  <username>
${DB_PASSWORD}  <password>

*** Keywords ***


*** Test Cases ***
Exemplo de Conexão ao Banco de Dados
    Connect To Database     ${DB_DRIVER}    ${DB_URL}      ${DB_USERNAME}     ${DB_PASSWORD}    
    @{result}    Query    SELECT top 1 * FROM sua_tabela
    Log Many    ${result}
    Disconnect From Database