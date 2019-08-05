# Repetições

As repetições são trechos de código que serão repetidos durante uma determinada condição \[[1](#links)\]. Temos os seguintes tipos de repetições:

- For (Para)
- While (Enquanto)
- Do while (Faça enquanto)
- Foreach (Para cada)

Vamos usar o mesmo problema em cada um dos tipos de repetições: Fazer um programa que imprima os números de 1 (inclusive) a 10 (inclusive). Vamos ver em cada tipo como vamos resolver este problema.

<script id="asciicast-HOLlSW7FdMR3GP8tS826CrRtb" src="https://asciinema.org/a/HOLlSW7FdMR3GP8tS826CrRtb.js" async></script>

## For

Vamos ao código:

```csharp
using System;

namespace ListaNumeros
{
    class Program
    {
        static void Main(string[] args)
        {
            for (int i = 1; i <= 10; i++)
            {
                Console.WriteLine(i);
            }
        }
    }
}
```

Quando usamos o *for*, ele cria uma variável do tipo inteira que será nossa variável de interação. Ela recebe um número novo a cada vez que passamos no código e ele irá repetir até que a condição desejada não possa ser mais aceita. Podemos ver isso no trecho entre parenteses `int i = 1; i <= 10; i++`, onde:

- `int i = 1;` cria nossa variável de interação e inicia com o número 1;
- `i <= 10;` é nosso condicional. Enquanto a variável `i` for menor ou igual a 10, ele irá repetir o que esta dentro das chaves do *for*, neste caso, `Console.WriteLine(i);`;
- `i++` é um [operador de incremento](../operators/) que representa o mesmo que `i = i + 1`.

## While

Vamos ao código do mesmo problema, só que agora com o *while*:

```csharp
using System;

namespace ListaNumeros
{
    class Program
    {
        static void Main(string[] args)
        {
            int i = 1;
            while (i <= 10)
            {
                Console.WriteLine(i);
                i++;
            }
        }
    }
}
```

Se repararem temos os mesmos 3 elementos que usamos no *for*, só que tivemos que inicializar fora do *while* a variável e incrementar ela dentro das chaves do *while*. Este não é o melhor exemplo de uso de um while, que deve ser usado, por exemplo, quando não temos uma leitura ordenada de valores.

## Do while

O código não muda muito do *while*:

```csharp
using System;

namespace ListaNumeros
{
    class Program
    {
        static void Main(string[] args)
        {
            int i = 1;
            do
            {
                Console.WriteLine(i);
                i++;
            } while (i <= 10);
        }
    }
}
```

Em resumo, um coloca um *while* em cima e outro em baixo?!?? Exatamente! Neste caso, mesmo que o laço nunca fosse executado, por exemplo, se o `int i` fosse igual a 15, ele iria imprimir o número 15, pois no *do while* ele executa primeiro e verifica depois. Um exemplo que funcionaria melhor para o caso do *do while* seria abrir um programa que deve ficar em execução até que o usuário diga que quer encerrar o programa.

## Foreach

Este tipo de repetição é usada quando temos uma variável que seja uma lista ou um [vetor](../arrays/). Vamos ver o código:

```csharp
using System;

namespace ListaNumeros
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] numeros = new int[10] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            foreach (var numero in numeros)
            {
                Console.WriteLine(numero);
            }
        }
    }
}
```

O *foreach* é o mais "diferentão" dos tipos de repetição. Isso porque como já foi comentado ele precisa de uma lista ou de um [vetor](../arrays/), algo que seja enumerável. Este tipo de repetição é o mais utilizado no desenvolvimento de aplicações mais complexas, onde temos que tratar de dados enumeráveis.

## Links

- [1] [C# 7 Quick Syntax Reference: A Pocket Guide to the Language, APIs, and Library](https://books.google.com.br/books?id=MnhqDwAAQBAJ&dq=C%23+7+Quick+Syntax+Reference&hl=pt-BR&source=gbs_navlinks_s)
