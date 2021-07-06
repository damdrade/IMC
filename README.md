# IMC Calculator
API REST desenvolvida com o intuito de realizar o cálculo de IMC do paciente. 

## Setup
Clone o repositório:
```
git clone https://github.com/damdrade/IMC.git
```

## Modo de uso
- Faça uma requisição HTTP POST enviando no corpo da mensagem um JSON com a altura e peso do paciente (Ex: `<addr>` {"imc": {"height": 1.70, "weight": 70}});
- Selecione um arquivo de legenda SubRip (.srt);
- Insira um offset válido no formato `hh:mm:ss,fff` e selecione se esse valor será adicionado ou subtraído dos tempos atuais;
- Baixe o arquivo gerado.
