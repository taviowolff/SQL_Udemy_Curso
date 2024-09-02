-- Procedures no Mundo Real

-- ARQUITETURA MVC
/*
A arquitetura MVC é um padrão de projeto de software que divide uma aplicação em três camadas: 
Visão (View), Controlador (Controller) e Modelo (Model). 
O MVC foi criado na década de 1970 e tem como objetivo separar conceitos e facilitar o reuso de código. 

Algumas vantagens da arquitetura MVC são: 

Organização:
O código fica mais organizado e fácil de manter. 

Testabilidade:
Cada camada pode ser testada separadamente, o que facilita a criação de testes unitários. 

Colaboração:
As responsabilidades estão claramente definidas, o que permite que as equipes de desenvolvimento 
trabalhem de forma mais eficaz. 

Troca de informações:
A troca de informações entre a interface do usuário e os dados no banco é facilitada, o que resulta em 
respostas mais rápidas e dinâmicas. 

A arquitetura MVC é triangular, pois a view envia atualizações para o controlador, que atualiza o modelo, 
e a view é atualizada diretamente pelo modelo. 

O MVC (Model-View-Controller) é um padrão de arquitetura de software que separa as responsabilidades de 
uma aplicação em três componentes: Modelo, Visão e Controlador. O Controller é responsável por receber 
as entradas do usuário, processá-las e atualizar o Modelo. 

O padrão MVC é muito utilizado em aplicações web, pois facilita a troca de informações entre a interface 
do usuário e os dados no banco. Isso resulta em respostas mais rápidas e dinâmicas. 

O Controller é uma camada intermediária entre a camada de apresentação (View) e a camada de negócios (Model). 
Toda requisição do usuário deve passar pelo Controller, que se comunica com o Model. 
*/