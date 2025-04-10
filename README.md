# Analisador Léxico para Smalltalk

Este projeto implementa um analisador léxico para a linguagem Smalltalk utilizando JavaCC (Java Compiler Compiler) para o LABORATÓRIO 1 DA DISCIPLINA DE COMPILADORES 2025.

## Estrutura do Projeto

˜˜˜
/

|-- doc/                          # Enunciado do projeto
├── scripts/                      # Scripts para facilitar compilação e execução
│   ├── compile.sh
│   └── run.sh
├── src/
│   ├── main/
│   │   ├── jj/
│   │   │   └── SmallTalk.jj      # Definição do analisador léxico em JavaCC
│   │   └── java/
│   │       └── lexical/          # Arquivos Java gerados pelo JavaCC
│   └── samples/                  # Exemplos de código Smalltalk para testes
│       └── sample1.st
└── README.md                     # Este arquivo
˜˜˜

## Tokens Reconhecidos

O analisador léxico reconhece os seguintes tipos de tokens:

- **KEYWORD**: Palavras reservadas (self, super, true, false, nil, thisContext)
- **ID**: Identificadores (variáveis, nomes de métodos)
- **INTEGER**: Números inteiros (ex: 42)
- **FLOAT**: Números de ponto flutuante (ex: 3.14)
- **STRING**: Strings delimitadas por aspas simples (ex: 'texto')
- **CHARACTER**: Caracteres precedidos por $ (ex: $a)
- **SYMBOL**: Símbolos precedidos por # (ex: #nome)
- **Operadores e delimitadores**: 
  - Parênteses: `(` `)` 
  - Colchetes: `[` `]`
  - Chaves: `{` `}`
  - Operadores aritméticos: `+` `-` `*` `/`
  - Operadores relacionais: `<` `>` `<=` `>=` `=` `~=`
  - Outros: `.` `;` `:` `:=` `^` `#` `|` `$`

## Como compilar o projeto

Para compilar o analisador léxico, execute o script de compilação:

```bash
chmod +x scripts/compile.sh
./scripts/compile.sh
```

Se necessário, utilize o comando `chmod` para solicitar permissão

Este script executa o JavaCC para gerar os arquivos Java a partir do arquivo `.jj` e então compila os arquivos Java gerados.

## Como executar o analisador

Para executar o analisador léxico em um arquivo de entrada, utilize o script de execução:

```bash
chmod +x scripts/run.sh
./scripts/run.sh src/test/resources/input_samples/sample1.st
```

O analisador processará o arquivo de entrada e exibirá os tokens identificados no formato:

```
TIPO_DO_TOKEN valor_do_token
```

## Exemplo de saída

Para um input como `x := 10`, a saída será:

```
ID x
ASSIGNMENT :=
INTEGER 10
```

## Autor

Patrick Duarte Pimenta
