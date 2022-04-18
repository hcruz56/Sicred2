# Sicred2
Optei por uitilizar o MySQL como SGBD para criar a estrutura do banco a ser ingerido porque tive problemas de instalação ao tentar usar o PostgreSQL.
Neste SGBD não foi possível criar um data type tipo_conta como foi solicitado no diagrama informado na tabela conta.
Neste caso, optei por criar a tabela conta com o campo tipo com data type int e criar a tabela tipo_conta com a informação de cada tipo de conta para correlacionar as informações.

Optei também por utilizar o sqoop para realizar o ETL dos dados porque é a forma mais rápida para transferir dados entre bancos de dados relacionais e o Hadoop.

Se tivesse mais mais tempo para concluir o desafio faria todo processo automátizado, com execução de scripts automatizados com passagem de parâmetros. 
Porém não foi possível porque tive que atuar depois das 19hs e gastei dois dias vendo a melhor opção do SGBD, sendo que na quinta-feira dia 14/04/2022 consegui concluir toda estrutura e inserção dos dados.

Como sexta-feira dia 15/04/2022 foi feriado, aproveitei para atuar na validação dos dados e iniciar criação do ambiente virtual para Big Data.

As maiores dificuldades que encontrei no desenvolvimento foi criar o ambiente virtual para simular o ambiente Hadoop, gastei dois dias para isso, pois não pude ficar full time.

Criei o planejamento de teste unitário em documento Word para cobrir os fluxos porque não tive tempo para instalar e configurar o Docker.

Os scripts utilizados para criação das estruturas seguem salvos  no projeto.
