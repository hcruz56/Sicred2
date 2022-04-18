Observações
Ao criar o seu projeto você pode documentar tudo no README, porquê optou por determinado design, 
o que faria se tivesse mais tempo para concluir o desafio, dificuldades que encontrou no 
desenvolvimento. Importante salientar, que todos os scripts utilizados para criação das estruturas 
devem ser salvos dentro do seu projeto

Requisitos:
• Criar a estrutura do banco a ser ingerido, utilizando a tecnologia de sua preferência (MySQL, PostgreSQL). OK
• Inserir uma massa de dados fictícia nas tabelas, não precisa ser um volume tão grande. OK
• Utilizar a linguagem de programação de sua preferência. OK
• Para realizar o ETL dos dados, deve ser utilizado algum framework de processamento distribuído para Big Data, Ex: Hadoop, Spark, Flink e Storm.
• Escrever um arquivo CSV, em um diretório parametrizado pelo usuário. OK
• Disponibilizar esse projeto em um repositório privado no seu GitHub OK


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

Os scripts utilizados para criação das estruturas seguem salvos  no projeto.

https://github.com/hcruz56/Sicred2

Importação dos dados para o ambiente Hadoop usando sqoop

sqoop import --connect jdbc:mysql://localhost/sicooperative --table movimento_flat --username root --password cloudera --check-column data_movimento --incremental append --last-value 0 -m 1

sqoop import --connect jdbc:mysql://localhost/sicooperative --table movimento_flat --username root --password cloudera -m 1 --hive-import --hive-overwrite --hive-database sicooperative --hive-table movimento_flat --split-by data_movimento

sudo hdfs dfs -ls /user/cloudera/

sudo hdfs dfs -rm -r /user/cloudera/


cloudera@quickstart ~]$ beeline
Beeline version 1.1.0-cdh5.13.0 by Apache Hive
beeline> !connect jdbc:hive2://
scan complete in 36ms
Connecting to jdbc:hive2://
Enter username for jdbc:hive2://: 
Enter password for jdbc:hive2://: 
Connected to: Apache Hive (version 1.1.0-cdh5.13.0)
Driver: Hive JDBC (version 1.1.0-cdh5.13.0)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://> set hive.execution.engine;
+---------------------------+--+
|            set            |
+---------------------------+--+
| hive.execution.engine=mr  |
+---------------------------+--+
1 row selected (1.051 seconds)
0: jdbc:hive2://> set hive.execution.engine=spark;
No rows affected (0.011 seconds)
0: jdbc:hive2://> set hive.execution.engine;
+------------------------------+--+
|             set              |
+------------------------------+--+
| hive.execution.engine=spark  |
+------------------------------+--+
1 row selected (0.015 seconds)
0: jdbc:hive2://> 






