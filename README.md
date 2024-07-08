# Website de Treinamento em C# ASP.NET

Bem-vindo ao projeto Website de Treinamento em C# ASP.NET. Este projeto foi criado com o objetivo de aprimorar habilidades de programação e familiarização com o desenvolvimento web utilizando a tecnologia ASP.NET.

## Descrição

O Website de Treinamento é uma aplicação que permite aos usuários praticar e interagir com funcionalidades comuns em um site moderno. Ele inclui um sistema de autenticação robusto, gerenciamento de conteúdo e um painel de administração para controle de usuários e artigos.

## Funcionalidades

- **Autenticação de Usuários**: Registro, login, logout e recuperação de senha.
- **Gerenciamento de Conteúdo**: Criação, edição e exclusão de artigos e páginas.
- **Painel de Administração**: Interface dedicada para administradores gerenciarem o site.
- **Sistema de Comentários**: Usuários podem comentar em artigos e páginas.
- **Design Responsivo**: Interface amigável e adaptável para diversos dispositivos.

## Tecnologias Usadas

- **Linguagem de Programação**: C#
- **Framework Web**: ASP.NET Core
- **Banco de Dados**: SQL Server
- **ORM**: Entity Framework Core
- **Autenticação**: ASP.NET Identity
- **Frontend**: HTML5, CSS3, JavaScript
- **Bibliotecas de Interface**: Bootstrap
- **IDE**: Visual Studio / Visual Studio Code

## Requisitos

- .NET Core 3.1 ou superior
- SQL Server
- Visual Studio ou VS Code

## Como Usar

1. Clone este repositório para sua máquina local.
    ```bash
    git clone https://github.com/seuusuario/website-csharp-aspnet.git
    ```
2. Navegue até o diretório do projeto.
    ```bash
    cd website-csharp-aspnet
    ```
3. Restaure os pacotes NuGet.
    ```bash
    dotnet restore
    ```
4. Atualize o banco de dados.
    ```bash
    dotnet ef database update
    ```
5. Execute a aplicação.
    ```bash
    dotnet run
    ```
6. Abra o navegador e acesse `http://localhost:5000` para visualizar o site.

## Estrutura do Projeto

- **/Controllers**: Controladores da aplicação.
- **/Models**: Modelos de dados.
- **/Views**: Arquivos de visualização (Razor).
- **/wwwroot**: Arquivos públicos acessíveis pela web, como CSS, JS e imagens.
- **/Data**: Contexto do banco de dados e migrações.
- **/Migrations**: Arquivos de migração do Entity Framework.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests para melhorar o Website de Treinamento em C# ASP.NET.

## Licença

Este projeto está licenciado sob a MIT License. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## Contato

Para mais informações, entre em contato:

- Email: filipefigueiredo39@gmail.com
- LinkedIn: [Luis Borges](https://www.linkedin.com/in/luis-figueiredo-232897258)
