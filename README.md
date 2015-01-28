# Microblog
Treinamento em Ruby on Rails

Requisitos do projeto:
-----------------------
1. Criar um formulário para criar, editar e deletar posts apenas com os campos: title e message;

2. Validar a existência desses dois campos ao cadastrar um novo post;

3. Se a validação passar com sucesso, deve atualizar a timeline incluindo o novo post

4. O usuário pode acessar um específico post acessando a rota /titulo-do-post para visualizar apenas um único post; 

5. O padrão de rota deve se basear no title do post em formato slugify, semelhante ao padrão abaixo: 
Se o title do post é: "Cartões de Crédito" o path em slug, correto para acessar esse post deve se chamar "/cartoes-de-credito" (Sem acentuações e os espaços em branco substituídos por hífen);

6. Na rota raíz "/" deve listar todos os últimos posts, ordenado do mais novo para mais antigo post;

Requisitos técnicos:
-----------------------
1. O app deve ser criado utilizando linguagem Ruby com framework Rails;

2. É necessário criar testes com framework Rspec;

3. A pubicação do código fonte precisa ser em um repositório público do Github, Bitbucket ou outros.

Obs: Não pode usar scaffold ;)

Requisitos desejáveis:
------------------------

1. Hospedar a aplicação em um cloud gratuito, por exemplo Heroku ou Openshift;

2. Utilizar Ajax para interações assíncronas na atualização da timeline;

O que vamos avaliar:

1. Qualidade de código

2. Seu código Ruby

3. Testes


