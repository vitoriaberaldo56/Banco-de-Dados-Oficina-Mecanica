CONSULTAS E VIEWS


🟢1 - Básico{


		1.1 - Liste todas as ordens de serviço abertas com o nome do cliente e a data de entrega.

		1.2 - Mostre todas as OS concluídas no último ano (ordenadas da mais recente para a mais antiga).

		1.3 - Traga uma lista de clientes que possuem mais de uma OS registrada.

		1.4 - Crie uma view chamada vw_os_cliente que mostre o nome do cliente, número da OS e status.

		1.5 - Crie uma view chamada vw_veiculo_os que mostre cliente, veículo e a OS correspondente.
}

🟡2 - Intermediário{

		2.1 - Calcule o valor total de cada OS, somando os valores dos serviços associados.

		2.2 - Liste os 5 serviços mais solicitados em todas as OS.

		2.3 - Mostre o número de OS concluídas por cada técnico.

		2.4 - Crie uma view vw_faturamento_mensal que mostre o total faturado no ano de 2023.

		2.5 - Crie uma view vw_clientes_vip que mostre os 5 clientes que mais geraram receita.
}

🔴 Avançado{

		Liste todas as OS em atraso, considerando a data prevista de entrega em relação à data atual.

		Monte um histórico de OS de um cliente específico, ordenando da mais recente para a mais antiga.

		Calcule o tempo médio de conclusão de OS por técnico.

		Crie uma view vw_desempenho_tecnicos que mostre: técnico, quantidade de OS finalizadas, tempo médio de conclusão e valor total gerado.

		Crie uma view vw_servicos_lucrativos que mostre os serviços mais rentáveis (somatório dos valores e ranking).
}


==========================RESPOSTAS


/*1.1 Liste todas as ordens de serviço abertas com o nome do cliente e a data de entrega.*/

select 
c.C_Nome, c.Telefone,
o.Status, o.Entrega
from cliente c
inner join os o
on c.Pk_Cliente = o.Fk_cliente;


/*1.2 - Mostre todas as OS concluídas no último ano (ordenadas da mais recente para a mais antiga.*/

select * from os
where entrega
between '2024-01-01' and '2024-12-31'
and status='finalizada'
order by entrega desc;


/*1.3 - Traga uma lista de clientes que possuem mais de uma OS registrada.*/

select c.c_nome, c.telefone,
							o.Fk_cliente, count(*) as quantidade_de_OS
from cliente c
inner join os o
on c.Pk_Cliente = o.Fk_cliente
group by Fk_cliente
having count(*)>1; 			


/*1.4 - Crie uma view chamada vw_os_cliente que mostre o nome do cliente, número da OS e status.*/

create view vw_os_cliente as
		select c.c_nome as Nome,
									o.pk_os as Numero_OS,
									o.status
		from cliente c
		inner join os o
		on c.Pk_Cliente = o.Fk_cliente
		;

/*1.5 - Crie uma view chamada vw_veiculo_os que mostre cliente, veículo e a OS correspondente*/

create view vw_veiculo_os as
		select o.pk_os as Numero_OS,
									c.c_nome as Cliente,
									v.modelo,
									v.fabricante,
									v.placa,
									o.status
		from cliente c
		inner join veiculo v
		on v.fk_proprietario = c.Pk_Cliente
		inner join os o
		on c.Pk_Cliente = o.Fk_cliente
;


/*2.1 - Calcule o valor total de cada OS, somando os valores dos serviços associados.*/

select o.pk_os as Numero_OS,
							r.tipo as serviço,
							o.status,
							r.preco
from os o
inner join reparo r
on o.fk_reparo = r.pk_reparo;

/*2.2 - Liste os 5 serviços mais solicitados em todas as OS.*/

select o.pk_os as Numero_OS,
							r.tipo as serviço, count(*)
from os o
inner join reparo r
on o.fk_reparo = r.pk_reparo
group by r.tipo
order by count(*) desc
limit 5;

/*2.3 - Mostre o número de OS concluídas por cada técnico*/

select f.f_nome as Funcionario,
							f.cargo,
							o.fk_funcionario, count(*) as total_os
from Funcionario f
inner join os o
on f.pk_funcionario = o.fk_funcionario
group by o.fk_funcionario
;

/*2.4 - Crie uma view vw_faturamento_mensal que mostre o total faturado no ano de 2023.*/

create view vw_faturamento_mensal as
select
						o.entrega as ano_2023, 
						count(*) as total_os,
						sum(r.preco)
from os o
inner join reparo r
on o.fk_reparo = r.pk_reparo
where 
o.entrega BETWEEN '2023-01-01' and '2024-01-01'
;

/*2.5 - Crie uma view vw_clientes_vip_5 que mostre os 5 clientes que mais geraram receita.*/

create view vw_clientes_vip_5 as
		select 
							c.C_Nome as Cliente,
							o.Fk_cliente, count(*) as total_os,
							sum(r.preco) as total_renda
		from cliente c
		inner join os o
		on o.Fk_cliente = c.Pk_Cliente
		inner join reparo r
		on r.pk_reparo = o.fk_reparo
		group by o.Fk_cliente
		order by total_renda desc
		limit 5
;

