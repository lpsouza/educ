# Conhecendo C# com .NET Core

C# é uma linguagem de programação criada por dois engenheiros da Microsoft, Anders Hejlsberg e Scott Wiltamuth. Hejlsberg também é conhecido por autoria de outra linguagem de programação conhecida, enquanto era lider do time que desenhou o Borland Delphi: o Turbo Pascal. A linguagem C# tem como objetivo prover uma linguagem simples, segura, orientada a objetos, com foco na internet e de alta performance para desenvolvimento com .NET.

Antes de falar de .NET Core, é necessário entender o que é a plataforma .NET e o que é o .NET Framework.

## Plataforma .NET

A Microsoft anunciou em Julho de 2000 a linguagem C#, mas isso foi uma parte de um evento muito maior: o anuncio da plataforma .NET. Esta plataforma provê uma API (*Application Programming Interface*) para serviços e APIs do sistema operacional Windows e mais algumas tecnologias emergentes pela Microsoft dos anos 90.

## .NET Framework

Com uso da plataforma .NET, foi criada um conjunto de ferramentas para facilitar o desenvolivmento de aplicações, o .NET Framework. Abaixo podemos ver a imagem da arquitetura deste framework.

![Arquitetura do .NET Framework](assets/arquitetura-dotnet-framework.png)
<br />Fonte: Programming C#: Building. NET Applications with C

## .NET Core

O .NET Core foi lançado em junho de 2016 e tem como objetivo principal atender demandas multiplataformas (multiplos sistemas operacionais), ser extremamente leve para uso em IoT e nuvem e ser de código aberto (open source). Para entender melhor as diferenças entre .NET Framework e .NET Core, sugiro a [leitura complementar](#leitura-complementar): "Escolhendo entre o .NET Core e .NET Framework para aplicativos de servidor"

## Antes de iniciar...

Para iniciar nossos desenvolvimentos em C# e .NET Core, precisamos do nosso ambiente para desenvolvimento:

- [.NET Core SDK](https://www.microsoft.com/net/learn/get-started-with-dotnet-tutorial)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Git](https://git-scm.com/downloads)

E em especial para o Visual Studio Code, é necessário instalar a extensão:

- [C#](https://marketplace.visualstudio.com/items?itemName=ms-vscode.csharp)

## Hello World!

1. Faça o [Hello World](hello-world/).
1. Cadastre-se no [CodinGame](https://www.codingame.com/) e faça o [exercício de boas vindas](https://www.codingame.com/ide/puzzle/onboarding).

## Leitura complementar

- [Escolhendo entre o .NET Core e .NET Framework para aplicativos de servidor](https://docs.microsoft.com/pt-br/dotnet/standard/choosing-core-framework-server)

## Referências

LIBERTY, Jesse. **Programming C#: Building. NET Applications with C.** " O'Reilly Media, Inc.", 2005.