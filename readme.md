### Primeiro DOJO B3 de qualidade

## Preparando  o ambiente

1. Instalação do Python:
Vá para o site oficial do Python em https://www.python.org/ e baixe a versão mais recente do Python para o seu sistema operacional.
Siga as instruções de instalação fornecidas no site para instalar o Python em seu computador.
Após a instalação, verifique se o Python foi instalado corretamente abrindo um terminal (no Windows, use o prompt de comando) e digitando o seguinte comando:
```
python --version
```

Isso deve exibir a versão do Python instalada. Se isso funcionar, o Python foi instalado corretamente.

Comandos recomendados:
´´´
pip3 install --upgrade pip
py -m pip install --upgrade setuptools
´´´

2. Instalação do pip (gerenciador de pacotes do Python):
O pip geralmente é instalado automaticamente junto com o Python. Para verificar se o pip está instalado, digite o seguinte comando no terminal:

```
pip --version
```

Isso deve exibir a versão do pip instalada. Se isso funcionar, o pip está instalado corretamente.

Se o pip não estiver instalado, você pode instalar seguindo as instruções em https://pip.pypa.io/en/stable/installation/.

3. Instalação do Robot Framework e das bibliotecas necessárias:
Use o pip para instalar o Robot Framework e as bibliotecas relevantes. No terminal, digite:

```
pip install robotframework robotframework-requests robotframework-seleniumlibrary
```
Isso instalará o Robot Framework, bem como as bibliotecas RequestsLibrary (para testes de API) e SeleniumLibrary (para testes de interface do usuário web).

Após a instalação, verifique se as bibliotecas foram instaladas corretamente digitando os seguintes comandos no terminal:

```
robot --version
```
Isso deve exibir a versão do Robot Framework instalada. Em seguida, execute os seguintes comandos para verificar se as bibliotecas foram instaladas corretamente:

```
pip install -r requirements.txt
```
Isso deve gerar a documentação para as bibliotecas básicas

### Ordenar arquivos de saida
robot --outputdir Results --log Logs/log.html --report Reports/report.html --output Outputs/output.xml  .\Tests

ou

robot --outputdir Results   .\Tests


