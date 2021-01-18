# .NET Core - Básico

Este conteúdo tem a ideia de fixar o conhecimento de algoritmos usando a linguagem C# com uso do .NET Core. Lembrando que um algoritmo é uma sequencia de passos finitos com objetivo de resolver um problema. E com isso usamos a lógica de programação (uma técnica de encadear pensamentos para atingir determinado objetivo) para resolver estes problemas[^1].

## O que é o .NET Core

O .NET é uma plataforma de desenvolvedor de código aberto e cross-platform para a criação de vários tipos diferentes de aplicativos. Com o .NET, você pode usar várias linguagens, editores e bibliotecas para criar web, mobile, desktop, jogos e IoT (internet das coisas)[^2].

Para utilizar a plataforma .NET precisamos utilizar uma linguagem de programação, e neste caso vamos utilizar o C#, que é uma linguagem de programação simples, moderna, orientada a objetos e de tipagem segura. Alem da linguagem, vamos utilizar uma implementação do .NET cross-platform para sites, servidores e aplicativos de console para Linux, Windows e macOS, isto é, o .NET Core[^2].

## Ambiente para desenvolvimento

Para o desenvolvimento de aplicações com uso do .NET Core será necessário montar um ambiente de desenvolvimento. O ambiente que recomendo pode ser instalado em ambientes com os seguintes sistemas operacionais: Windows, Linux ou Mac.

- [Visual Studio Code](https://code.visualstudio.com/)
- [.NET Core SDK](https://dotnet.microsoft.com/)
- [Git](https://git-scm.com/)

Antes de continuar a leitura e executar os exemplos, instale os programas listados acima.

## Mais que um Hello World (Olá Mundo)

Quando falamos de começar com qualquer linguagem de programação, falamos de fazer o tal do "*Hello World*", que se baseia em fazer um programa que escreva na tela ou em um navegador a frase: "*Hello World*" ou em português: "Olá Mundo". Vamos fazer o nosso?

1. Abra o prompt de comando (no windows) ou o terminal (Linux / Mac) e crie uma pasta chamada `HelloWorld` e entre nela.
2. Dentro da pasta, execute este comando: `dotnet new console`
3. Após algumas mensagens, você deve ter na pasta alguns arquivos. Com estes arquivos na pasta, execute este comando: `dotnet run`
4. Deverá escrever na tela "*Hello world*".

<script id="asciicast-KCsXlEAImIm0Nr0c5vpip8KKJ" src="https://asciinema.org/a/KCsXlEAImIm0Nr0c5vpip8KKJ.js" async></script>

**Brotip**: Se você não sabe usar o prompt de comando, veja [este link](https://www.youtube.com/watch?v=JwklvuVoRSA) e se você não sabe usar o terminal, conheça [aqui os comandos](https://canaltech.com.br/linux/10-comandos-essenciais-do-linux/), que também funcionam no Mac.

Pronto! Fizemos nosso "*Hello World*"! Fácil não? Fácil até de mais né? Não precisamos fazer nada alem de comandos! Por isso que esta sessão se chama: "Mais que um Hello World (Olá Mundo)". 😝

Agora vamos conhecer nossos arquivos! Para isso vamos abrir esta pasta no Visual Studio Code, executando o comando dentro da mesma pasta: `code .` (Sim, esse ponto final precisa estar junto). Vamos nos ater a estrutura deste projeto (vamos começar a chamar essas pastas que criamos e rodamos o `dotnet new console` de projetos, ok?):

- **bin**: Pasta onde ficam os arquivos que são compilados pelo .NET Core.
- **obj**: Pasta onde ficam os arquivos intermediários da compilação.
- **HelloWorld.csproj**: Este é o arquivo de projeto que é especificados os parâmetros que serão usados pelo compilador.
- **Program.cs**: Este é o arquivo com o código fonte do nosso programa.

Atualmente o arquivo mais importante e que será sempre o mesmo arquivo utilizado em nossos projetos é o `Program.cs` e o seu conteúdo é apresentado abaixo:

```csharp
using System;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }
}
```

Vamos entender "linha a linha" o que esta neste arquivo:

```csharp
using System;
```

Aqui está carregando uma biblioteca de comandos, e neste caso, esta carregando uma biblioteca com funções de sistema.

```csharp
namespace HelloWorld
{
}
```

Esta é o espaço virtual do programa, tudo que é desenvolvido dentro deste espaço é considerado compartilhado pelo programa. Nos exemplos básicos que abordaremos aqui sempre utilizaremos o mesmo nome e será o mesmo nome do projeto.

```csharp
class Program
{
}
```

Esta é a classe base do programa. Classe será algo abordado em [Orientação a Objetos](/dotnet/object-oriented/), mas no momento temos que ter em mente que esta é a classe que o programa executa o objeto principal chamado *Program*.

```charp
static void Main(string[] args)
{
}
```

Este é o método principal da classe *Program*. De maneira básica, aqui é onde fica o nossos códigos que irão ser executados pelo programa. É outro assunto que será abordado em [Orientação a Objetos](/dotnet/object-oriented/).

```csharp
Console.WriteLine("Hello World!");
```

E por fim e não menos importante! Aqui temos o nosso código que foi executado quando rodamos o `dotnet run`. O `Console` é o objeto que representa o Prompt de Comando ou o Terminal, e ele esta executando um método chamado `WriteLine()`, que serve para imprimir no Prompt de Comando ou Terminal a string que estiver digitada dentro dos parenteses.

## Veja mais

- [Variáveis](variables/)
- [Operadores](operators/)
- [Condicionais](conditionals/)
- [Repetições](looping/)
- [Vetores](arrays/)

[^1]: [Introdução à programação: 500 algoritmos resolvidos](https://books.google.com.br/books?id=ZjRjDwAAQBAJ&dq=Introdu%C3%A7%C3%A3o+%C3%A0+Programa%C3%A7%C3%A3o:+500+Algoritmos+Resolvidos&hl=pt-BR&sa=X&ved=0ahUKEwi-1eb3i-jjAhV-JLkGHSMSAroQ6AEIKTAA)
[^2]: [What is .NET?](https://dotnet.microsoft.com/learn/dotnet/what-is-dotnet)
