# Variáveis

A partir de agora vamos começar a brincar com o exemplo do [Mais que um Hello World (Olá Mundo)](../#mais-que-um-hello-world-ol%c3%a1-mundo) para entendermos o que são as variáveis no C#. Para isso vamos a um problema: Precisamos de um programa que escreva mais do que um simples "*Hello World*". Agora ele deve escrever: "Olá Luiz" onde "Luiz" deve ser o nome do programador armazenado em uma variável. Mas, vamos do principio: O que é uma variável?

Variável é uma área de memória temporária onde podemos armazenar um determinado dado enquanto o programa esta sendo executado. Este dado pode ser do tipo:

- string: Valores alfanuméricos;  
Exemplo: `string nome = "Luiz";`
- int: Números inteiros;  
Exemplo: `int idade = 38;`
- double: "Números com virgula";  
Exemplo: `double preco = 19.99;`
- bool: Valores booleanos (Verdadeiro ou Falso).  
Exemplo: `bool comprado = true;`

Existem outros tipos de dados [^1], mas vamos trabalhar inicialmente com estes. Ok, vamos voltar ao problema: Escrever "Olá Luiz", onde "Luiz" é um dado armazenado em uma variável.

Então podemos fazer assim:

```csharp
using System;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            string nome = "Luiz";
            Console.WriteLine("Olá " + nome);
        }
    }
}
```

Execute este código e altere o valor da variável. Fácil não? Entenda que o `"Olá " + nome` é uma concatenação de strings. É como se estivéssemos escrevendo `"Olá " + "Luiz"`.

Então vamos começar a deixar mais complexo. Vamos pedir para que o usuário (a pessoa que esta executando nosso programa), para que digite o nome dela e depois imprima o "Olá nome-que-a-pessoa-digitou". 😅

Este pode ser feito usando um outro método do objeto `Console`, o `ReadLine()`. Vamos ver o uso dele na resolução do problema abaixo:

```csharp
using System;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite o seu nome: ");
            string nome = Console.ReadLine();
            Console.WriteLine("Olá " + nome);
        }
    }
}
```

Neste exemplo podemos ver o uso de duas coisas:

1. Mais um método do objeto `Console` chamado `Write()`. A diferença destes método com o `WriteLine()` é que ele não "avança para a linha de baixo", como se tivéssemos teclado <Enter\>. Ele fica com o cursor na mesma linha.
2. O uso da do `Console.ReadLine()` manda o valor digitado para uma variável, no caso aproveitei a variável do tipo string que havíamos criado. Somado ao método `Write()`na linha de cima, criei um efeito de escrever na mesma linha onde ele faz a pergunta "Digite o seu nome: ".

Veja a execução no terminal abaixo:

<script id="asciicast-FyNsCXBOBTogb5PT9UwBVqR7L" src="https://asciinema.org/a/FyNsCXBOBTogb5PT9UwBVqR7L.js" async></script>

Agora que aprendemos alguns comandos legais, vamos complicar um pouco mais. O problema a resolver agora é criar um programa que calcule a [média aritmética](https://matematicabasica.net/media-aritmetica/) de duas notas (números inteiros) de um aluno. Para isso vou criar um projeto novo chamado "CalculaMedia". Porque? Porque isso que representa um projeto: Um novo programa! Então vou fazer os mesmos passos que vimos em [Mais que um Hello World (Olá Mundo)](../#mais-que-um-hello-world-ol%c3%a1-mundo).

```csharp
using System;

namespace CalculaMedia
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite a primeira nota do aluno: ");
            int nota1 = int.Parse(Console.ReadLine());
            Console.Write("Digite a segunda nota do aluno: ");
            int nota2 = int.Parse(Console.ReadLine());

            int media = (nota1 + nota2) / 2;
            Console.WriteLine("A média do aluno é " + media);
        }
    }
}
```

Opa! Agora começou a vir coisas novas! Vamos lá:

1. Apareceu um cara novo: `int.Parse()`. Como o tipo inteiro (`int`) que nos permite fazer cálculos (string não fazem cálculos, eles concatenam lembra?), e o tipo inteiro não é "compreensível" com o tipo string (como disse, um concatena e outro calcula), então precisamos converter o formato. E é para isso que serve o `int.Parse()`. O método `ReadLine()` sempre retorna o dado em formato string, isto é, se você digitar um número, ele vai criar uma string com este número. Para fixar essa ideia:
    - `string nota1 = "5";` é um texto, diferente de `int nota1 = 5;` que é um número.
2. Podemos ver a formula da média na variável do tipo inteira chamada `media`. Esta formula precisa dos valores que o usuário vai digitar nas variáveis `nota1` e `nota2`.

Veja a execução no terminal abaixo:

<script id="asciicast-nPFIYBbc0n5JQ3wO6bDwihDvT" src="https://asciinema.org/a/nPFIYBbc0n5JQ3wO6bDwihDvT.js" async></script>

[^1]: [C# 7 Quick Syntax Reference: A Pocket Guide to the Language, APIs, and Library](https://books.google.com.br/books?id=MnhqDwAAQBAJ&dq=C%23+7+Quick+Syntax+Reference&hl=pt-BR&source=gbs_navlinks_s)
