# Migração de Workload On-Premises para a AWS.
Migração de um Workload rodando em data center (On Premises) para dentro da AWS.

# Sobre o Projeto
<p>Este projeto foi idealizado pela The Cloud Bootcamp. Toda a infraestrutura do projeto era criada através da console da AWS. Com o intuito de colocar em prática os conceitos sobre automação de infraestrutura em Cloud, decidi colocar a mão na massa e criar toda a infraestrutura com código. Existe diversas vantagens criar sua infraestrutura como código (IaC), como por exemplo: </p>
   <li>Acelera o processo de provisionamento de infraestrutura de produção, teste e produção. </li>
   <li>Diminuição na taxa de retrabalho e nos erros de configuração.</li>
   <li>A IaC baseia-se muito na automatização dos processos, com a infraestrutura automatizada, se torna repetível em outras aplicações e outros ambientes.</li>
    
<p>Nesse projeto, estamos trabalhando com: </p>
     <li>Uma VPC;</li>
     <li>Uma subnet pública e duas subnets privadas;</li>
     <li>Uma instância EC2</li>
     <li>Uma instância de RDS</li>
     <li>Um internet gateway</li>
     <li>Uma rota</li>

<p>Conectamos na instância EC2 e realizamos a instalação de todos os pacotes necesário para a aplicação rodar. Após isso, configuramos o servidor do Banco de Dados, no caso desse projeto o MySQL, com o nosso endpoint do Amazon Relational Database Service, credenciais de acesso e outros. Realizado as configurações, colocamos nossa aplicação para rodar. E pronto, agora seguiremos os próximos passos de acompanhar como a aplicação está se comportando no novo ambiente e prestar o devido suporte.</p>

# Conclusão
<p>Nesse projeto coloquei em prática alguns conceitos de automação e conhecimentos em Terraform que fui adquirindo através de tutoriais do Youtube, pesquisas no Google e em artigos do Medium. Comecei a estrutura do código de uma forma simples, utilizando apenas dois arquivos, main.tf e variables.tf, depois, realizei uma refatoração e separação dos recursos para que ficasse um código mais organizado e simplificado para o gerenciamento do código. Além disso, conseguimos reusabilidade e colaboração em equipe trabalhando dessa forma. </p>
