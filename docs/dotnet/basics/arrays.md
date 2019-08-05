# Vetores

Vimos em [Variaveis](../variables/) que elas são uma área de memória temporária onde podemos armazenar um determinado dado enquanto o programa esta sendo executado. Um vetor é um tipo especial de variável, que pode receber um conjunto de variáveis em uma mesma variável \[[1](#links)\]. Por exemplo, se queremos uma variável inteira, declaramos assim:

```csharp
// declarando uma variável inteiro "numero" e colocamos o número 3 nela
int numero = 3;
```

Agora com um vetor, podemos declarar um conjunto de variáveis inteiras, assim:

```csharp
// declarando um vetor de inteiros "numeros" e colocamos os números 1, 2 e 3 nele
int[] numeros = new int[3] { 1, 2, 3 };
```

Vetores são muito usados para resolver problemas que envolvem uma manipulação de dados quando estamos em uma [repetição](../looping/), por exemplo. Vamos a um problema para resolver: Desenvolver um programa que leia 5 números inteiros e imprima o menor e o maior número. Vamos ver o código e sua execução:

```csharp
using System;

namespace MenorMaior
{
    class Program
    {
        static void Main(string[] args)
        {
            // Instanciando o vetor para receber 5 números
            int[] numeros = new int[5];

            // Criando um laço (repetição) lendo de 0 (primeira "vaga" do vetor)
            // até 4 (última "vaga" do vetor)
            for (int i = 0; i < numeros.Length; i++)
            {
                // Um condicional para personalizar as mensagens!
                // "Balaca"? Sim, mas fica mais divertido assim!
                if (i == 0)
                {
                    Console.Write("Digite um número: ");
                }
                else
                {
                    Console.Write("Digite outro número: ");
                }
                numeros[i] = int.Parse(Console.ReadLine());
            }

            // Bom, eu não sei quem é o maior ou o menor, mas posso
            // começar imaginando que é sempre a primeira posição do vetor!
            int menor = numeros[0],
                maior = numeros[0];
            // Precisamos ler novamente o vetor para descobrir quem é
            // o menor e maior. Porque iniciando no "1"? Porque o
            // "0" já esta testado ali em cima né?
            for (int i = 1; i < numeros.Length; i++)
            {
                // Testando o menor
                if (menor > numeros[i])
                {
                    menor = numeros[i];
                }

                // Testando o maior
                if (maior < numeros[i])
                {
                    maior = numeros[i];
                }
            }

            // Quando acabar tudo, temos o menor e o maior!
            Console.WriteLine("O menor número digitado é: " + menor);
            Console.WriteLine("O maior número digitado é: " + maior);
        }
    }
}
```

A execução do código deve funcionar assim:

<script id="asciicast-CrVygHYkOBzvBBHGBMOod5wyh" src="https://asciinema.org/a/CrVygHYkOBzvBBHGBMOod5wyh.js" async></script>

## Atribuição de dados em um vetor

Como vimos no nosso problema-exemplo, a atribuição é feita com o nome da variável e no final entre colchetes, o número da posição que queremos do vetor, lembrando que ele começa em "0" e termina em "tamanho do vetor subtraído 1". Um exemplo de atribuição:

```csharp
int[] numeros = new int[3];
numeros[0] = 2; // Primeiro
numeros[1] = 5;
numeros[2] = 0; // Último
```

Aqui temos a forma mais básica do uso de vetores, e existem mais tipos de vetores que podem ser estudados \[[1](#links)\].

## Links

- [1] [C# 7 Quick Syntax Reference: A Pocket Guide to the Language, APIs, and Library](https://books.google.com.br/books?id=MnhqDwAAQBAJ&dq=C%23+7+Quick+Syntax+Reference&hl=pt-BR&source=gbs_navlinks_s)
