%%writefile run_tests.sh
#!/bin/bash

echo "🚀 Iniciando o build do Compilador Toy..."
make clean
make

echo -e "\n📦 Compilando programas de teste (Gerando LLVM IR, Assembly e Binarios)..."

for prog in factor isprime pidigits fibonacci; do
    echo "-> Processando $prog.pas"
    # 1. Gera LLVM IR
    ./toy_compiler < $prog.pas > $prog.ll
    # 2. Gera arquivo Assembly (.s) nativo
    clang -S -masm=intel $prog.ll -o $prog.s
    # 3. Gera o executável nativo
    clang $prog.ll -o ${prog}_exe
done

echo -e "\n✅ Tudo compilado com sucesso!"
echo "Para testar, execute no terminal:"
echo " ./factor_exe 84"
echo " ./isprime_exe 17"
echo " ./pidigits_exe 6"
echo " ./fibonacci_exe 10"
