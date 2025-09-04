TRATAMENTO DOS DADOS

/*CORRECAO DOS NOMES*/


/*MOSTRA TODOS OS CLIENTES*/
select pk_cliente, C_Nome, 
count(*) 
from cliente
group by c_nome;

=================

/*FILTRA SOMENTE OS CLIENTES COM DADOS INCORRETOS*/

select pk_cliente, C_Nome, 
count(*) from cliente
where pk_cliente 
not in (29,38,4,21,22,5,41,26,1,10,9,7,2,20,27,34,18)
group by c_nome;

=================

update cliente
	set c_nome = 'Débora Lima'
	where pk_cliente = 18
;

update cliente
	set c_nome = 'Aline Fernandes'
	where pk_cliente = 38
;	

update cliente
	set c_nome = 'Aline Santos'
	where pk_cliente = 12
;	

update cliente
	set c_nome = 'Beatriz Souza'
	where pk_cliente = 14
;	

update cliente
	set c_nome = 'Bruna Dias'
	where pk_cliente = 28
;	

update cliente
	set c_nome = 'Camila Hernandes'
	where pk_cliente = 39;	

update cliente
	set c_nome = 'Cláudia Faria'
	where pk_cliente = 16
;						

update cliente
	set c_nome = 'Cristiane Correa'
	where pk_cliente = 45
;

update cliente
	set c_nome = 'Douglas Antônio'
	where pk_cliente = 42
;

update cliente
	set c_nome = 'Fabiana Costa'
	where pk_cliente = 40
;

update cliente
	set c_nome = 'Felipe Gusmão'
	where pk_cliente = 19
;

update cliente
	set c_nome = 'Fernanda Oliveira'
	where pk_cliente = 6
;

update cliente
	set c_nome = 'Flávio Alberto'
	where pk_cliente = 33
;

update cliente
	set c_nome = 'Gustavo Silva'
	where pk_cliente = 30
;

update cliente
	set c_nome = 'Pedro Henrique'
	where pk_cliente = 47
;

update cliente
	set c_nome = 'João da Silva'
	where pk_cliente = 3
;
update cliente
	set c_nome = 'Júlio Cesar'
	where pk_cliente = 25
;
update cliente
	set c_nome = 'Karina Romero'
	where pk_cliente = 50
;
update cliente
	set c_nome = 'Leonardo Pereira'
	where pk_cliente = 49;
update cliente
	set c_nome = 'Luana Rocha'
	where pk_cliente = 32
;
update cliente
	set c_nome = 'Marcos Pereira'
	where pk_cliente = 31
;
update cliente
	set c_nome = 'Marcos Vinicius'
	where pk_cliente = 11
;
update cliente
	set c_nome = 'Mariana Costa'
	where pk_cliente = 24 
;

update cliente
	set c_nome = 'Maurício Henrique'
	where pk_cliente = 51
;
update cliente
	set c_nome = 'Paula Siqueira'
	where pk_cliente = 36
;
update cliente
	set c_nome = 'Paulo Lima'
	where pk_cliente = 13
;
update cliente
	set c_nome = 'Pedro Antônio'
	where pk_cliente = 8
;
update cliente
	set c_nome = 'Rafael Bernardes'
	where pk_cliente = 44
;
update cliente
	set c_nome = 'Renato Alves'
	where pk_cliente = 17
;
update cliente
	set c_nome = 'Ricardo Mendes'   
	where pk_cliente = 15
;
update cliente
	set c_nome = 'Vanessa Barrich'
	where pk_cliente = 46
;
update cliente
	set c_nome = 'Tiago Martins'
	where pk_cliente = 23
;
update cliente
	set c_nome = 'Tatiane Oliveira'
	where pk_cliente = 43
;
update cliente
	set c_nome = 'Sabrina Otto'
	where pk_cliente = 48
;
update cliente
	set c_nome = 'Rodrigo Assunção'
	where pk_cliente = 37
;

update cliente
	set c_nome = 'Vinícius Andrade'
	where pk_cliente = 35
;

===============================
/*ALTERANDO TELEFONES*/

/*verificando se não há telefones repetidos*/
select telefone, count(*)
from cliente
group by telefone;

/*filtra quais registros possuem menos de 11 caracteres*/
SELECT * FROM cliente
WHERE CHAR_LENGTH(Telefone) < 11;

update cliente
	set telefone='35998870012'
	where pk_cliente=8
;

update cliente
	set telefone='35988700035'
	where pk_cliente=11
;

update cliente
	set telefone='35998870012'
	where pk_cliente=20
;

update cliente
	set telefone='35998870024'
	where pk_cliente=32
;

update cliente
	set telefone='35998870014'
	where telefone='35-998870014'
;

update cliente
	set telefone='35998874224'
	where telefone='3599-8874224'
;


=====================
/*ALTERANDO FUNCIONARIOS*/

/*REGISTROS DE NOME DUPLICADOS*/

select pk_funcionario, f_nome,
count(*)
from funcionario
group by f_nome
;


update funcionario
	set f_nome = 'Flávio Henrique'
	where pk_funcionario=11
;

update funcionario
	set f_nome='Gustavo Vierne',
	cargo='mecanico',
	contratacao='2024-09-21'
	where pk_funcionario=2
;

update funcionario
	set f_nome='Bruno Pereira'
	where pk_funcionario=12

;

==============================
/*DATAS INCORRETAS*/

select pk_funcionario, f_nome, contratacao,
count(*)
from funcionario
group by contratacao
order by contratacao
;

update funcionario
	set contratacao='2021-07-14'
	where contratacao='1901-03-12'
;

update funcionario
	set contratacao='2023-07-14'
	where contratacao='2027-02-11'
;