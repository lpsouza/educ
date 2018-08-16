# Olá objetos

Para começar a entender como funciona um objeto em C#, devemos criar um novo projeto e abrir o arquivo `Program.cs`

```csharp
using System;

namespace POO
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
Lembra deste arquivo do [Hello World](/csharp-e-dotnet/hello-world/)? Este arquivo por si só já se trata de uma classe que gera o objeto principal do projeto em C#.

Mas agora vamos criar um novo arquivo no projeto chamado `Pessoa.cs`, onde vamos criar uma classe pessoa. **Importante**: Reparem que o nome do arquivo começa com a letra maiúscula! Isso vai valer para o nome da classe dentro do arquivo, reparem:

```csharp
namespace POO
{
    // Nome da classe (mesmo nome do arquivo e respeitando a maiúscula
    class Pessoa
    {
        // Aqui as propriedades (repare que aqui também se respeita a
        // primeira letra maiúscula)
        public string Nome { get; set; }
        public int AnoNascimento { get; set; }
    }
}
```

Após isso, vamos voltar no arquivo `Program.cs` e criar nosso objeto a partir da classe **Pessoa**:

```csharp
using System;
using System.Collections.Generic;

namespace POO
{
    class Program
    {
        static void Main(string[] args)
        {
            // Aqui criamos o objeto p1 a partir da classe Pessoa
            Pessoa p1 = new Pessoa();
            // E aqui criamos o objeto p2 também a partir da classe Pessoa
            Pessoa p2 = new Pessoa();

            // Carregando valores nas propriedades do objeto p1
            p1.Nome = "Luiz";
            p1.AnoNascimento = 1980;

            // E carregando valores nas propriedades do objeto p2
            p2.Nome = "Helena";
            p2.AnoNascimento = 1986;

            // Aqui exibindo o conteúdo da propriedade Nome de ambos os objetos
            Console.WriteLine(p1.Nome);
            Console.WriteLine(p2.Nome);
        }
    }
}
```

Bom, vocês devem ter percebido que um objeto é criado em uma variável e que acessamos as propriedades do objeto com um "." (ponto). Agora vamos retornar para o nossa classe Pessoa e vamos adicionar um **médoto**:

```csharp
using System;

namespace POO
{
    class Pessoa
    {
        public string Nome { get; set; }
        public int AnoNascimento { get; set; }

        // Este aqui é um método.
        public int ObterIdade() {
            int anoAtual = DateTime.Today.Year;
            return anoAtual - this.AnoNascimento;
        }
    }
}
```

O método criado **ObterIdade()** pega o ano atual do sistema e a propriedade **AnoNascimento** para retornar a idade da pessoa. Vamos voltar para o arquivo `Program.cs` e criar uma forma mais inteligente de usar este objeto, criando uma lista de pessoas que podemos ficar cadastrando e ao final retorne os nomes e as idades de todos os cadastrados:

```csharp
using System;
using System.Collections.Generic; // Para usar a lista

namespace POO
{
    class Program
    {
        static void Main(string[] args)
        {
            // Aqui criamos uma lista de pessoas
            List<Pessoa> listaPessoas = new List<Pessoa>();

            // Iniciamos um loop com while e um booleano chamado 
            bool continua = true;
            while (continua)
            {
                // Aqui o objeto que será sempre carregado para adicionar na lista
                Pessoa novaPessoa = new Pessoa();
                
                Console.Write("Digite um nome: ");
                // Capturando da console o valor para a propriedade Nome do objeto novaPessoa
                novaPessoa.Nome = Console.ReadLine();
                
                Console.Write("Digite o ano de nascimento: ");
                // Capturando da console o valor para a propriedade AnoNascimento do objeto novaPessoa
                // (reparem que precisamos converter o tipo de string para int)
                novaPessoa.AnoNascimento = int.Parse(Console.ReadLine());

                // Estamos adicionando este objeto novaPessoa na lista                
                listaPessoas.Add(novaPessoa);
                
                // Aqui é como vamos manter este cadastro funcionando, fácil não?
                Console.Write("Deseja continuar inserindo pessoas? (s/n) ");
                string inserir = Console.ReadLine();
                
                if (inserir == "n")
                {
                    continua = false;
                }
            }

            // Quando finalizar, é só lermos a lista e imprimir na console o nome da pessoa
            // (via propriedade Nome) e a idade (via o método ObterIdade())
            foreach (var pessoa in listaPessoas)
            {
                Console.WriteLine("Nome: {0}, Idade: {1}", pessoa.Nome, pessoa.ObterIdade());
            }
        }
    }
}
```
