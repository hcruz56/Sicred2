drop table if exist banco.movimento_flat
create table exist banco.movimento_flat
(
nome_associado string,
sobrenome_associado string, 
idade_associado string,
vlr_transacao_movimento string, 
des_transacao_movimento string,
data_movimento string,
numero_cartao string, 
nome_impresso_cartao string,
data_criacao_cartao string,
tipo_conta string,
data_criacao_conta string
)
partitioned by (data_criacao_conta string)
stored as parquet;
