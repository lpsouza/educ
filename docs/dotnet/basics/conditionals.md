# Condicionais

Os condicionais são momentos de decisão em um programa onde ele pode ou não executar um pedaço do código \[[1](#links)\]. Esta decisão pode ser desenvolvida de duas formas:

- If/else/else if (Se/senão/senão se)
- Switch case (Em caso de)

## If/else/else if

Utilizando este tipo de condicional, o que define a decisão é um teste onde a resposta precisa ser booleano, isto é, precisa retornar verdadeiro ou falso. Então vamos a mais um problema que temos que resolver desenvolvendo um programa em C#: Criar um programa que calcule a [média aritmética](https://matematicabasica.net/media-aritmetica/) de duas notas (números inteiros) de um aluno e imprima a média e se esta média for maior ou igual a 6 imprimir "aprovado".

O código ficaria mais ou menos assim:

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
            if (media >= 6)
            {
                Console.WriteLine("O aluno esta aprovado!");
            }
        }
    }
}
```

Adicionando uma regra nova: O programa precisa retornar alem de "aprovado" quando for maior ou igual a 6 a nota, deve retornar "reprovado" quando for o contrario. Para isso vamos fazer as modificações:

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
            if (media >= 6)
            {
                Console.WriteLine("O aluno esta aprovado!");
            }
            else
            {
                Console.WriteLine("O aluno esta reprovado!");
            }
        }
    }
}
```

Fácil não? Vamos dar mais um grau de dificuldade: Agora a escola que utiliza este programa mudou a forma de aprovação e reprovação do aluno. Agora deve ser:

- Se o aluno estiver média 7 ou maior, ele esta aprovado;
- E se o aluno estiver com média entre 5 e 6, ele esta de recuperação;
- Mas se a média estiver menor que 5, ele esta reprovado.

Parece complicado? Vamos ver no código:

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
            if (media >= 7)
            {
                Console.WriteLine("O aluno esta aprovado!");
            }
            else if (media >= 5)
            {
                Console.WriteLine("O aluno esta em recuperação!");
            }
            else
            {
                Console.WriteLine("O aluno esta reprovado!");
            }
        }
    }
}
```

## Switch case

Utilizando este tipo de condicional, o que define a decisão é um teste onde trabalhamos com algumas possibilidades de resposta. Vamos resolver o seguinte problema: Desenvolver um programa que leia uma opção (um número inteiro) do usuário e as opções devem ser:

- Caso opção 1: Imprimir "Olá mundo";
- Caso opção 2: Imprimir "Até mais mundo";
- Caso opção 3: Imprimir "Boa noite mundo";
- Caso qualquer outra opção: Imprimir "Digite somente opções 1, 2 ou 3".

O código seria mais ou menos assim:

```csharp
using System;

namespace VerificaOpcoes
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite uma opção: ");
            int opcao = int.Parse(Console.ReadLine());
            switch (opcao)
            {
                case 1:
                    Console.WriteLine("Olá mundo");
                    break;
                case 2:
                    Console.WriteLine("Até mais mundo");
                    break;
                case 3:
                    Console.WriteLine("Boa noite mundo");
                    break;
                default:
                    Console.WriteLine("Digite somente opções 1, 2 ou 3");
                    break;
            }
        }
    }
}
```

## Links

- [1] [C# 7 Quick Syntax Reference: A Pocket Guide to the Language, APIs, and Library](https://books.google.com.br/books?id=MnhqDwAAQBAJ&dq=C%23+7+Quick+Syntax+Reference&hl=pt-BR&source=gbs_navlinks_s)
