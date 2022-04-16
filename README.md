# Sicred2
Optei por uitilizar o MySQL porque foi o SGBD mais amigavel para instalar e criar as estruturas de banco, porém neste SGBD não foi possível 
criar uma data type como foi solicitado no diagrama informado na tabela conta, campo tipo com data type tipo_conta. 
Optei criando a tabela conta com o campo tipo com data type int e criando a tabela tipo_conta conforme abaixo:

create table if not exists tipo_conta
(
tipo  int,
descricao varchar(20)
);

Se tivesse mais mais tempo para concluir o desafio iria criar todo ambiente virtual HDFS do Hadoop, mas não foi possível fazê-lo.
Neste caso optei por exportar o resultado da estrutura movimento_flat em csv, salvar em ambiente hdfs já pronto e carregar em banco Hive.

As maiores dificuldades que encontrei no desenvolvimento foi criar um ambiente virtual que simula um ambiente Hadoop, por isto optei por usar um
ambiente já existente.

Criei o planejamento de teste unitário em Excel para cobrir os fluxos porque não consegui instalar no Docker.

Os scripts utilizados para criação das estruturas seguem salvos  no projeto.
