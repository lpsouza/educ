# Programação Orientada a objetos

A programação orientada a objetos nos trás a analogia de objetos do mundo real. Vejam o exemplo onde podemos desenvolver um jogo de corrida e os objetos do mundo real que usamos em um carro de corrida ser utilizado nesta programação como o piloto, o carro, os pneus, o volante, e por aí vai \[[1](#links)\]!

## Classe e objetos

Então, qualquer coisa que tenha propriedades e pode realizar ações são considerados como objetos. Agora antes de sair criando nossos objetos na programação é necessário entender a diferença entre **classes** e **objetos** \[[1](#links)\].

- **Classe**: Podemos comparar com uma planta baixa, ou um template de um futuro objeto. É na classe que escrevemos as propriedades e os métodos que um objeto vai utilizar. Vale lembrar que uma classe não ocupa espaço em memória!
- **Objeto**: O objeto é algo que ocupa espaço em memória e é inicializado a partir de uma classe. Podemos comparar como a construção de uma casa (o objeto) a partir se sua planta baixa (a classe).

### Propriedades

São as características que um objeto pode ter. No exemplo do objeto carro, as propriedades podem ser o país de construção, ano de fabricação, a marca, o modelo, etc \[[1](#links)\]. Vamos ver a classe `Carro` em C#:

```csharp
using System;

namespace ExemploOO
{
    public class Carro
    {
        public string Pais;
        public int Ano;
        public string Modelo;
        public string Marca;
   }
}
```

### Métodos

São as ações que este objeto poderá executar \[[1](#links)\]. Continuando com o exemplo da classe `Carro` em C# onde adicionaremos alguns métodos:

```csharp
using System;

namespace ExemploOO
{
    public class Carro
    {
        public string Pais;
        public int Ano;
        public string Modelo;
        public string Marca;

        public void Ligar()
        {
            Console.WriteLine("Carro ligado.");
        }

        public void Desligar()
        {
            Console.WriteLine("Carro desligado.");
        }

        public void Andar()
        {
            Console.WriteLine("O carro esta andando.");
        }

        public void Parar()
        {
            Console.WriteLine("O carro esta parado.");
        }
    }
}
```

### Instânciando um objeto

Como foi comentado em [Classes e Objetos](#classe-e-objetos), uma classe não ocupa espaço em memória e um objeto, ao contrário, ocupa. Para que uma classe se torne um objeto, temos que fazer sua instância (o inicialização) como objeto. Para isso, vamos inicializar a classe `Carro` no arquivo `Program.cs`:

```csharp
using System;
using System.Threading;

namespace ExemploOO
{
    class Program
    {
        static void Main(string[] args)
        {
            Carro c = new Carro(); // A partir daqui temos o objeto c do tipo Carro

            // Colocando as propriedades
            c.Pais = "Alemanha";
            c.Ano = 2007;
            c.Modelo = "BMW M3 Coupé";
            c.Marca = "BMW";

            Console.WriteLine("Carro: {0} {1}/{2} - {3}", c.Modelo, c.Ano, c.Marca, c.Pais);

            // Executando os métodos
            c.Ligar();
            c.Andar();

            // Dando uma pausa de 2 segundos para o carro andar
            Thread.Sleep(2000);

            c.Parar();
            c.Desligar();
        }
    }
}
```

Podemos ver a execução do nosso primeiro objeto, em um programa, abaixo:

<script id="asciicast-jhkOe9HaNfFV6ivTcUeuvMnbW" src="https://asciinema.org/a/jhkOe9HaNfFV6ivTcUeuvMnbW.js" async></script>

### Construtores

Um construtor é um método especial que é executado no momento de sua inicialização e para cria-lo, devemos criar um método com o mesmo nome da classe \[[1](#links)\]. Vamos criar um construtor para nossa classe `Carro`:

```csharp
using System;

namespace ExemploOO
{
    public class Carro
    {
        public string Pais;
        public int Ano;
        public string Modelo;
        public string Marca;

        public Carro() // Este é um construtor
        {
            // Quando o objeto for inicializado, ele já irá ter
            // estas informações como propriedades.
            this.Pais = "Alemanha";
            this.Ano = 2011;
            this.Modelo = "BMW Z4 GT3";
            this.Marca = "BMW";
        }

        public void Ligar()
        {
            Console.WriteLine("Carro ligado.");
        }

        public void Desligar()
        {
            Console.WriteLine("Carro desligado.");
        }

        public void Andar()
        {
            Console.WriteLine("O carro esta andando.");
        }

        public void Parar()
        {
            Console.WriteLine("O carro esta parado.");
        }
    }
}
```

Vamos ver a execução desta nova classe alterando nosso `Program.cs`:

```csharp
using System;
using System.Threading;

namespace ExemploOO
{
    class Program
    {
        static void Main(string[] args)
        {
            Carro c = new Carro(); // A partir daqui temos o objeto c do tipo Carro

            // Reparem que não foi inserida nenhuma propriedade!
            Console.WriteLine("Carro: {0} {1}/{2} - {3}", c.Modelo, c.Ano, c.Marca, c.Pais);

            // Executando os métodos
            c.Ligar();
            c.Andar();

            // Dando uma pausa de 2 segundos para o carro andar
            Thread.Sleep(2000);

            c.Parar();
            c.Desligar();
        }
    }
}
```

Em execução, temos o seguinte resultado:

<script id="asciicast-V8KZYe3v3uIb75ogwo7fujXz5" src="https://asciinema.org/a/V8KZYe3v3uIb75ogwo7fujXz5.js" async></script>

## Encapsulamento

Encapsulamento representa a proteção de alguma forma os trechos de código de um objeto afim de ser acessível somente de quem tem permissão. Em C# chamamos de modificadores de acesso e usamos isso desde o item [Orientação a Objetos](#orienta%c3%a7%c3%a3o-a-objetos), isto é, o `public` que escrevemos antes de cada classe, propriedade ou método. Temos 5 valores possíveis de usar e estão apresentados na tabela abaixo \[[1](#links)\]:

|Modificador|Funcionalidade|
|---|---|
|`public`|Acessível em qualquer classe|
|`private`|Acessível apenas na classe que foi declarado|
|`protected`|Acessível apenas a classe que foi declarado e suas subclasses|
|`internal`|Acessível às classes dentro do mesmo *assembly* ou *assembly* associado|
|`protected-internal`|Efeito combinado de `protected` e `internal`|

## Herança

Como todos os conceitos apresentados até aqui sobre orientação a objetos, a herança também é algo que é similar ao mundo real. Uma criança herda traços do seus pais ao mesmo tempo que possui suas próprias características. Na programação a ideia segue o mesmo conceito, onde um objeto poder herdar propriedades e métodos de outro objeto que chamamos de "objeto pai". Então um objeto `Carro` e `Caminhao` esta para um objeto pai chamado `Veiculo`. Vamos ver o exemplo abaixo destas classes:

Arquivo `Veiculo.cs`:

```csharp
using System;

namespace ExemploOO
{
    public class Veiculo
    {
        public string Pais;
        public int Ano;
        public string Modelo;
        public string Marca;

        public void Ligar()
        {
            Console.WriteLine("Veículo ligado.");
        }

        public void Desligar()
        {
            Console.WriteLine("Veículo desligado.");
        }

        public void Andar()
        {
            Console.WriteLine("O veículo esta andando.");
        }

        public void Parar()
        {
            Console.WriteLine("O veículo esta parado.");
        }
    }
}
```

Arquivo `Carro.cs`:

```csharp
namespace ExemploOO
{
    // Aqui temos a herança sendo adicionada, agora Carro é herdeiro de Veiculo
    public class Carro : Veiculo
    {
        public Carro(string marca, string modelo, int ano, string pais)
        {
            // "this" quer dizer a própria classe mas ela não tem a
            // propriedade "Pais". Na realidade sua classe pai que
            // passou essa propriedade (uma herança) para Carro!
            this.Pais = pais;
            this.Ano = ano;
            this.Modelo = modelo;
            this.Marca = marca;
        }
    }
}
```

Arquivo `Caminhao.cs`:

```csharp
namespace ExemploOO
{
    // Aqui temos a herança sendo adicionada, agora Caminhao é herdeiro de Veiculo
    public class Caminhao : Veiculo
    {
        public Caminhao(string marca, string modelo, int ano)
        {
            // "this" quer dizer a própria classe mas ela não tem a
            // propriedade "Ano". Na realidade sua classe pai que
            // passou essa propriedade (uma herança) para Caminhao!
            this.Ano = ano;
            this.Modelo = modelo;
            this.Marca = marca;
        }
    }
}
```

E aqui um exemplo de uso dos objetos usando a herança no `Program.cs`:

```csharp
using System;
using System.Threading;

namespace ExemploOO
{
    class Program
    {
        static void Main(string[] args)
        {
            Carro c = new Carro("Aston Martin", "DB11", 2016, "Inglaterra");
            Caminhao t = new Caminhao("Volvo", "FH16", 2009);

            Console.WriteLine("\nCarro: {0} {1}/{2} - {3}", c.Modelo, c.Ano, c.Marca, c.Pais);

            c.Ligar();
            c.Andar();

            Thread.Sleep(2000);

            c.Parar();
            c.Desligar();

            Console.WriteLine("\nCaminhao {0} {1}/{2}",t.Modelo, t.Ano, t.Marca);

            c.Ligar();
            c.Andar();

            Thread.Sleep(2000);

            c.Parar();
            c.Desligar();
        }
    }
}
```

Aqui a execução deste programa:

<script id="asciicast-rsee4FL6LgEp2nmCvZCXqVAAc" src="https://asciinema.org/a/rsee4FL6LgEp2nmCvZCXqVAAc.js" async></script>

## Polimorfismo

O polimorfismo tem como base a ideia que na classe pai, temos um método e este mesmo método existe na classe filha e é **sobrescrito** \[[1](#links)\]. Imagine o nosso caso anterior, das classes filhas `Carro` e `Caminhao`, onde pode se ver que os métodos `Ligar()`, `Andar()`, `Parar()` e `Desligar()` eram da classe pai, mas executamos eles normalmente nas classes filhas devido a ser uma herança. Mas e quando um destes métodos precisa ser diferente em uma determinada classe filha? Por exemplo, o carro que ao andar agora pode habilitar o uso do turbo. Como isso ficaria?

Os arquivos `Veiculo.cs` e `Caminhao.cs` permanecem iguais, nossa mudança será em `Carro.cs`:

```csharp
using System;

namespace ExemploOO
{
    // Aqui temos a herança sendo adicionada, agora Carro é herdeiro de Veiculo
    public class Carro : Veiculo
    {
        public Carro(string marca, string modelo, int ano, string pais)
        {
            // "this" quer dizer a própria classe mas ela não tem a
            // propriedade "Pais". Na realidade sua classe pai que
            // passou essa propriedade (uma herança) para Carro!
            this.Pais = pais;
            this.Ano = ano;
            this.Modelo = modelo;
            this.Marca = marca;
        }

        public void Andar(bool usaTurbo)
        {
            if (usaTurbo)
            {
                Console.WriteLine("O veículo esta correndo.");
            }
            else
            {
                Console.WriteLine("O veículo esta andando.");
            }
        }
    }
}
```

E no arquivo `Program.cs`:

```csharp
using System;
using System.Threading;

namespace ExemploOO
{
    class Program
    {
        static void Main(string[] args)
        {
            Carro c = new Carro("Aston Martin", "DB11", 2016, "Inglaterra");
            Caminhao t = new Caminhao("Volvo", "FH16", 2009);

            Console.WriteLine("\nCarro: {0} {1}/{2} - {3}", c.Modelo, c.Ano, c.Marca, c.Pais);

            c.Ligar();
            c.Andar(false);

            Thread.Sleep(2000);

            c.Andar(true);

            Thread.Sleep(2000);

            c.Parar();
            c.Desligar();

            Console.WriteLine("\nCaminhao {0} {1}/{2}",t.Modelo, t.Ano, t.Marca);

            c.Ligar();
            c.Andar();

            Thread.Sleep(2000);

            c.Parar();
            c.Desligar();
        }
    }
}
```

Podemos ver que a execução ficou um pouco diferente:

<script id="asciicast-RoPvbKShWPKCciksxUgqZ6Agk" src="https://asciinema.org/a/RoPvbKShWPKCciksxUgqZ6Agk.js" async></script>

## Links

- [1] [Programação em C# Para Iniciantes](https://books.google.com.br/books?id=LR3nCwAAQBAJ&dq=programa%C3%A7%C3%A3o+orientada+a+objetos+c%23&hl=pt-BR&source=gbs_navlinks_s)
