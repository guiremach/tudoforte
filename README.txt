Documento de escopo técnico da API


Segue passos para implementação da API:

Passo 1: Importar o schema da base de dados Mysql, arquivo dump.sql

Passo 2: Copiar pasta tudoforte para a pasta HTDOCS ou correpondente do Apache

Passo 3: Entrar na pasta TudoForte e abrir arquivo API.php e alterar as configurações de acesso
ao banco de dados nas linhas de 11991 à 11995, cfe suas configurações de usuário/senha do MySQL.

Condição: Se a URL final não for http://localhost/tudoforte/, deverá ser alterada na linha
9319 para a sua URL bem considerar a sua URL no arquivo Postman anexo.


** Após os passos acima, o arquivo tudoforte.postman_collection poderá ser importado no postman
para testes da API


URL da documentação OPENAPI:
http://localhost/tudoforte/openapi - Pode ser importada no Swagger editor


TABELA: Cliente	
ENDPOINT: http://localhost/tudoforte/records/cliente
DESCRIÇÃO: Registro de Clientes
Campo			Descrição
cod_cliente		Código - Auto Incrementável
nom_cliente		Nome
cod_usu_inc		Trilha de auditoria
dat_inc			Trilha de auditoria
cod_usu_alt		Trilha de auditoria
dat_alt			Trilha de auditoria
cod_usu_exc		Trilha de auditoria
dat_exc			Trilha de auditoria
	
TABELA: Fornecedor	
ENDPOINT: http://localhost/tudoforte/records/fornecedor
DESCRIÇÃO: Registro de Fornecedores
Campo			Descrição
cod_fornecedor	Código - Auto Incrementável
nom_fornecedor	Nome
cod_usu_inc		Trilha de auditoria
dat_inc			Trilha de auditoria
cod_usu_alt		Trilha de auditoria
dat_alt			Trilha de auditoria
cod_usu_exc		Trilha de auditoria
dat_exc			Trilha de auditoria
	

TABELA: Produto	
ENDPOINT: http://localhost/tudoforte/records/produto
DESCRIÇÃO: Registro de Produtos
Campo			Descrição
cod_produto		Código - Auto Incrementável
nom_produto		Nome do Produto
dsc_produto		Descrição
val_produto		Valor
ref_produto		Referencia
cod_usu_inc		Trilha de auditoria
dat_inc			Trilha de auditoria
cod_usu_alt		Trilha de auditoria
dat_alt			Trilha de auditoria
cod_usu_exc		Trilha de auditoria
dat_exc			Trilha de auditoria

TABELA: Produto_Fornecedor	
ENDPOINT: http://localhost/tudoforte/records/produto_fornecedor	
DESCRIÇÃO: Associação de Produtos à Fornecedores
Campo			Descrição
cod_prod_forn	Código - Auto Incrementável
cod_produto		Código Produto
cod_fornecedor	Código Fornecedor
cod_usu_inc		Trilha de auditoria
dat_inc			Trilha de auditoria
cod_usu_alt		Trilha de auditoria
dat_alt			Trilha de auditoria
cod_usu_exc		Trilha de auditoria
dat_exc			Trilha de auditoria
	
Usuario - NÃO UTILIZADO	
Campo			Descrição
cod_usuario		Código - Auto Incrementável
nom_usuario		Nome usuário
dsc_senha		Senha
cod_usu_inc		Trilha de auditoria
dat_inc			Trilha de auditoria
cod_usu_alt		Trilha de auditoria
dat_alt			Trilha de auditoria
cod_usu_exc		Trilha de auditoria
dat_exc			Trilha de auditoria
	

TABELA: venda
ENDPOINT: http://localhost/tudoforte/records/venda
DESCRIÇÃO: Registro de vendas
Campo			Descrição
cod_venda		Código - Auto Incrementável
cod_cliente		Código Cliente
dsc_endereco_entrega	Endereço entrega
cod_status		Status da venda
cod_usu_inc		Trilha de auditoria
dat_inc			Trilha de auditoria
cod_usu_alt		Trilha de auditoria
dat_alt			Trilha de auditoria
cod_usu_exc		Trilha de auditoria
dat_exc			Trilha de auditoria
	
TABELA: venda_produto
ENDPOINT: http://localhost/tudoforte/records/venda_produto
DESCRIÇÃO: Registro de Produtos da venda
Campo			Descrição
cod_venda_produto	Código - Auto Incrementável
cod_venda		Código da Venda
cod_produto		Código do Produto
val_quantidade	Quantidade do Produto
cod_usu_inc		Trilha de auditoria
dat_inc			Trilha de auditoria
cod_usu_alt		Trilha de auditoria
dat_alt			Trilha de auditoria
cod_usu_exc		Trilha de auditoria
dat_exc			Trilha de auditoria

VIEW: vvenda
ENDPOINT: http://localhost/tudoforte/records/vvenda_produto/?filter=cod_venda,eq,1
DESCRIÇÃO: Retorna informações sobre o status da venda, informações dos produtos, preço,
quantidade e fornecedores, além do total da venda.
Campo			Descrição
cod_venda		Código da Venda
dsc_endereco_entrega	Endereço de Entrega
cod_cliente		Código do cliente
nom_cliente		Nome do Cliente
cod_produto		Código do Produto
nom_produto		Nome do Produto
ref_produto		Referencia do Produto
val_produto		Valor do Produto
val_quantidade	Quantidade de venda
val_total_produtos	Valor total do produto*Quantidae
dsc_fornecedores	Fornecedores (separados por ,)
dsc_status		Status da venda
val_total_venda	Valor total da Venda
dat_venda		Data da venda

