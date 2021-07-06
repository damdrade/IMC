# IMC Calculator
API REST desenvolvida com o intuito de realizar o cálculo de IMC do paciente

## Setup
Clone o repositório:
```
git clone https://github.com/damdrade/IMC.git
```

## Modo de uso
- Faça uma requisição HTTP POST enviando no corpo da mensagem um JSON com a altura e peso do paciente (Ex: `{"imc": {"height": 1.70, "weight": 70}}`)
- A URL a ser utilizada é a `http://localhost:3000/imc`
- O retorno será um JSON com o IMC e a classificação do paciente

## Gems
Utilizei o `RSpec` para a realização de um teste unitário e o `JWT` para validar o Token de autenticação
