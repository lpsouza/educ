# Operadores

Os operadores são símbolos especiais para operar valores[^1]. Eles podem ser:

- Aritméticos
- Atribuição
- Comparação
- Lógicos

## Operadores Aritméticos

São os operadores das quatro operações matemáticas básicas e o operador de [módulo](https://pt.wikipedia.org/wiki/Opera%C3%A7%C3%A3o_m%C3%B3dulo). Segue abaixo o uso no código:

```csharp
int x = 3 + 2; // adição
    x = 3 - 2; // subtração
    x = 3 * 2; // multiplicação
    x = 3 / 2; // divisão
    x = 3 % 2; // módulo (resto da divisão)
```

## Operador de Atribuição

O operador de atribuição mais usado é o `=` que representa o a atribuição de valor a uma variável.

### Operadores de Atribuição Combinados

Um uso comum dos operadores de atribuição e aritméticos combinados é quando queremos executar um calculo simples com a variável que precisa retornar para ela mesma. Vejam um exemplo de uso no código:

```csharp
int x = 0;
    x += 5; // x = x + 5;
    x -= 5; // x = x - 5;
    x *= 5; // x = x * 5;
    x /= 5; // x = x / 5;
    x %= 5; // x = x % 5;
```

### Operadores de Incremento e Decremento

Outro operador comum é quando queremos fazer um simples incremento (somar 1) ou um simples decremento (subtrair 1) de uma variável. Veja o exemplo no código:

```csharp
x++; // x = x + 1;
x--; // x = x - 1;
```

Estes operadores podem ser usados antes ou depois da váriavel:

```csharp
x++; // pós-incremento
x--; // pós-decremento
++x; // pré-incremento
--x; // pré-decremento
```

Embora pareçam a mesma coisa, existe uma diferença do pré e no pós incremento ou decremento. Vamos resolver um problema e ver o que acontece em cada um dos casos: Desenvolver um programa que leia um número e imprima o número digitado e o próximo número. Para isso vamos ver este código:

```csharp
using System;

namespace ImprimeProximoNumero
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite um número: ");
            int numero = int.Parse(Console.ReadLine());
            Console.WriteLine("O número digitado foi: " + numero++);
            Console.WriteLine("O próximo número é: " + numero);
        }
    }
}
```

A execução deste código temos:

<script id="asciicast-cv9ZcqfC15i5PMFrNz7NZ5oBG" src="https://asciinema.org/a/cv9ZcqfC15i5PMFrNz7NZ5oBG.js" async></script>

Agora se alterarmos o código para este:

```csharp
using System;

namespace ImprimeProximoNumero
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite um número: ");
            int numero = int.Parse(Console.ReadLine());
            Console.WriteLine("O número digitado foi: " + ++numero);
            Console.WriteLine("O próximo número é: " + numero);
        }
    }
}
```

A execução acontece assim:

<script id="asciicast-OtQzNvtzcAiUH8WfYjuWPxMje" src="https://asciinema.org/a/OtQzNvtzcAiUH8WfYjuWPxMje.js" async></script>

Repare que o número digitado já somou na mesma linha onde ele estava antes de imprimir o resultado!

## Operadores de Comparação

Operadores de comparação retornam sempre verdadeiro (`true`) ou falso (`false`). São usados sempre que precisamos de uma condição a ser atendida (como em [Condicionais](../conditionals/) ou em [Repetições](../looping/)). Veja os exemplos no código abaixo:

```csharp
bool b = (2 == 3); // igual á
     b = (2 != 3); // diferente de
     b = (2 > 3);  // maior que
     b = (2 < 3);  // menor que
     b = (2 >= 3); // maior ou igual á
     b = (2 <= 3); // menor ou igual á
```

## Operadores Lógicos

Os operadores lógicos são usados em conjunto com os operadores de comparação para comparar um conjunto de booleanos. Veja os exemplos no código abaixo:

```csharp
bool b = (true && false); // operador "e" lógico
     b = (true || false); // operador "ou" lógico
     b = !(true);         // operador "não" lógico
```

Temos mais operadores[^1], mas de forma básica estes são os mais usados.

[^1]: [C# 7 Quick Syntax Reference: A Pocket Guide to the Language, APIs, and Library](https://books.google.com.br/books?id=MnhqDwAAQBAJ&dq=C%23+7+Quick+Syntax+Reference&hl=pt-BR&source=gbs_navlinks_s)
