# Hello World

Para criarmos nosso primeiro projeto e rodar, abra o prompt de comando ou shell de sua preferência, **vá para um diretório onde deseja guardar seu projeto** e digite:

`dotnet new console -o MeuProjeto`

Onde `MeuProjeto` é o nome que você quer dar ao projeto. Feito isso, devem perceber que foi criado um diretório novo com o nome **MeuProjeto** e este então deve conter os arquivos iniciais do projeto! Para testar se o projeto já esta funcionando, entre no diretório criado e digite:

`dotnet run`

O resultado dever ser a impressão da frase: "Hello World!".

## Mais que um Hello World

Vamos agora aprimorar o nosso projeto e dentro da pasta do projeto, no seu prompt de comando ou shell de preferência, digite:

`code .`

Este comando deve abrir o Visual Studio Code dentro da pasta do projeto e assim permitindo editar os arquivos todos por ele. Agora vamos editar o arquivo **Program.cs**. Este arquivo é o nosso arquivo principal de todo o desenvolvimento usando o C# e ele deve ter a seguinte estrutura (explicada por comentários):

```csharp
using System; /* Carrega bibliotecas adcionais ao projeto, neste caso esta carregando a biblioteca de sistema. */

namespace ExemploCSharp /* O namespace é uma forma de agrupar logicamente os objetos criados para um fim comum. */
{
    class Program /* A classe Program é a classe inicial do projeto, sendo a primeira a ser compilada na ordem. */
    {
        static void Main(string[] args) /* Este é o metodo inicial que é compilado. */
        {
            Console.WriteLine("Hello World!"); /* Printa na tela o que a string entre parenteses. */
        }
    }
}
```

Muito bem! Agora vamos fazer algumas modificações para entender melhor e conhecer um pouco mais sobre C#:

```csharp
using System;

namespace ExemploCSharp
{
    class Program
    {
        static void Main(string[] args)
        {
            string nome = "Luiz"; // Variável do tipo string (veja leitura complementar 2 para saber mais os tipos)
            Console.WriteLine("Hello " + nome); // Console.WriteLine alterado para receber o valor da variável nome
        }
    }
}
```

Agora vamos modificar um pouco mais:

```csharp
using System;

namespace ExemploCSharp
{
    class Program
    {
        static void Main(string[] args)
        {
            string nome = "Luiz";
            int anoNascimento = 1980; // Reparem que o ano é do tipo int (inteiro), logo posso fazer calculos com ele.
            int anoAtual = 2018;
            int idade = anoAtual - anoNascimento; // Aqui uma subtração que só dá certo porque tudo é int!
            Console.WriteLine("Hello " + nome);
            Console.WriteLine("Ei! Você tem " + idade + " anos né? Legal!");
        }
    }
}
```

Que tal agora trabalhar com condicionais?

```csharp
using System;

namespace ExemploCSharp
{
    class Program
    {
        static void Main(string[] args)
        {
            string nome = "Luiz";
            int anoNascimento = 1980;
            int anoAtual = 2018;
            int idade = anoAtual - anoNascimento;
            Console.WriteLine("Hello " + nome);
            Console.WriteLine("Ei! Você tem " + idade + " anos né? Legal!");
            
             // Aqui o uso de uma estrutura condicional
            if (idade >= 18)
            {
                Console.WriteLine("Uau! Você é maior de idade!");
            }
        }
    }
}
```

Por fim, vamos sofisticar um pouco mais o nosso exemplo:

```csharp
using System;

namespace ExemploCSharp
{
    class Program
    {
        static void Main(string[] args)
        {
            // Declaração de variáveis sem valor, apenas com o tipo
            string nome;
            int anoNascimento, anoAtual, idade;

            Console.Write("Digite o seu nome: "); // Escrevendo na console sem quebrar a linha!
            nome = Console.ReadLine(); // Obtendo informações da console!

            Console.Write("Digite o ano que você nasceu: ");
            anoNascimento = int.Parse(Console.ReadLine()); // Repare que precisamos do int.Parse() para converter o tipo string para um tipo int!
            
            anoAtual = DateTime.Today.Year; // Obtendo o ano atual do sistema!
            idade = anoAtual - anoNascimento;

            Console.WriteLine("Hello {0}! Você tem {1} anos né? Legal!", nome, idade);
            
             // Aqui o uso de uma estrutura condicional
            if (idade >= 18)
            {
                Console.WriteLine("Uau! Você é maior de idade!");
            }
        }
    }
}
```

E era isso! Bem vindo ao C# com .NET Core!

## Leitura complementar:

1. [Guia de C#](https://docs.microsoft.com/pt-br/dotnet/csharp/index)
1. [Tabela de tipos internos (Referência de C#)](https://docs.microsoft.com/pt-br/dotnet/csharp/language-reference/keywords/built-in-types-table)
1. [Operadores (Guia de Programação em C#)](https://docs.microsoft.com/pt-br/dotnet/csharp/programming-guide/statements-expressions-operators/operators)
1. [Operadores sobrecarregáveis (Guia de Programação em C#)](https://docs.microsoft.com/pt-br/dotnet/csharp/programming-guide/statements-expressions-operators/overloadable-operators)
