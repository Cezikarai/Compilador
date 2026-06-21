# Toy Compiler: Mini-Pascal 🐲

**Integrantes da Equipe:**
* César Augusto Vargas Franco Bueno
* João Filipe Garcia

## 1. Project Structure
O projeto é composto pelos seguintes arquivos principais:
* `lexer.l`: Analisador léxico construído com Flex (Regular Expressions e Finite Automata).
* `parser.y`: Analisador sintático construído com Bison (Context-Free Grammar).
* `ast.h`: Suporte em C++ contendo a declaração da *Abstract Syntax Tree* (AST) e geração de código (LLVM C++ API).
* `Makefile`: Arquivo de automação de build do compilador.
* `run_tests.sh`: Script Bash para compilar e testar os algoritmos.
* Programas fonte de teste (`.pas`): `factor.pas`, `isprime.pas`, `pidigits.pas`, `fibonacci.pas`.

## 2. Environment Setup
Este compilador foi projetado para rodar em ambientes Linux (Ubuntu/Debian) ou Mac. Para preparar o ambiente com as bibliotecas de desenvolvimento do Flex, Bison e LLVM, execute:
```bash
sudo apt-get update
sudo apt-get install -y flex bison llvm clang nasm llvm-dev
