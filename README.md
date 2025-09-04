# Banco-de-Dados-Oficina-Mecanica
Este repositório se trata de um projeto fictício, onde um banco de dados mysql foi criado para representar as tabelas necessárias para o gerenciamento de ordens de serviços, técnicos e clientes de uma oficina.


# Requisitos Funcionais – Sistema de Oficina Mecânica

# Objetivo

O sistema deve gerenciar os processos de uma oficina mecânica, permitindo o cadastro de clientes, veículos, ordens de serviço e reparos realizados, garantindo a integridade e consistência das informações.



# Requisitos Funcionais

1. Cadastro de Clientes

   * O sistema deve permitir o cadastro de clientes com dados como nome, telefone, endereço e e-mail.
   * Cada cliente deve possuir um identificador único.

2. Cadastro de Veículos

   * O sistema deve registrar veículos vinculados a um cliente.
   * Devem ser armazenadas informações como placa, modelo, marca e ano de fabricação.
   * Um cliente pode ter mais de um veículo cadastrado.

3. Gestão de Ordens de Serviço (OS)

   * O sistema deve permitir a abertura de ordens de serviço vinculadas a um veículo e a um cliente.
   * A OS deve conter informações como data de abertura, status (aberta, em andamento, finalizada) e valor total.
   * Cada OS pode conter múltiplos reparos associados.

4. Registro de Reparos

   * O sistema deve armazenar os tipos de reparos realizados, com descrição e valor do serviço.
   * Reparos devem ser vinculados a uma ordem de serviço.
   * Uma OS pode ter vários reparos.

5. Relacionamentos e Integridade

   * O sistema deve garantir integridade referencial entre clientes, veículos, ordens de serviço e reparos.
   * Exclusões devem respeitar as dependências (ex.: não permitir excluir cliente que possui veículo/OS).

6. Consultas e Relatórios

   * O sistema deve possibilitar consultas sobre clientes, veículos e OS.
   * Deve permitir relatórios como: ordens de serviço em aberto, histórico de reparos por veículo e total de serviços prestados.

---

# Estrutura de Tabelas Necessárias

* **Cliente** (`id_cliente`, nome, telefone, endereço, email)
* **Veículo** (`id_veiculo`, placa, modelo, marca, ano, fk\_cliente)
* **Ordem de Serviço (OS)** (`id_os`, data\_abertura, status, valor\_total, fk\_cliente, fk\_veiculo)
* **Reparo** (`id_reparo`, descricao, valor)
* **OS\_Reparo** (`id_os_reparo`, fk\_os, fk\_reparo, quantidade, valor\_total) *(tabela de associação, já que uma OS pode ter vários reparos e um mesmo reparo pode estar em várias OS)*

