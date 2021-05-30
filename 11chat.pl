init:-
    nl,
    writeln('Welcome ao Chatbot'),
    repeat, test_internal.

test_internal:-
    nl,
    write('- - - - - - - - - - - - - - - - - - - - '), nl,
    print_prompt(me),
    write('Qual � a sua d�vida?'), nl,
    print_prompt(me),
    write('[perguntas, feedback, sair]'), nl,
    print_prompt(you),
    read(Ans), nl,
    search(Ans).

search(sair):-!; test_internal.

search(X):-
    db_question(X), nl,
    test_internal.

db_question(perguntas):-
    write('- - - - - - - - - - - - - - - - - - - - '), nl,
    write('DB: questions'), nl,
    write('Qual � a sua d�vida?'), nl,
    write('[1] O que � uma rede de computadores?'), nl,
    write('[2] Qual a classifica��o de redes?'), nl,
    write('[3] O que � um roteador?'), nl,
    write('[4] O que � uma placa de redes?'), nl,
    write('[5] O que � um modem?'), nl,
    write('[6] O que � um repetidor?'), nl,
    write('[7] O que � um switch?'), nl,
    write('[8] O que � correio eletr�nico?'), nl,
    write('[9] O que � um cabo coaxial?'), nl,
    write('[10] O que � um cabo de par tran�ado?'), nl,
    write('[11] O que � uma uma fribra �ptica?'), nl,
    write('[12] O que � Radiofrequ�ncia?'), nl,
    write('[13] O que s�o topologias de redes?'), nl,
    write('[14] O que � uma topologia parcialmente ligada?'), nl,
    write('[15] O que � uma topologia em barramento?'), nl,
    write('[16] O que � uma topologia ponto a ponto?'), nl,
    write('[17] O que � uma topologia multiponto?'), nl,
    write('[18] O que � uma topologia estrela?'), nl,
    write('[19] O que � Ethernet?'), nl,
    write('[20] O que � endere�amento na ethernet e quais s�o os seus servi�os?'), nl,
    write('[21] O que � um protocolo MAC?'), nl,
    write('[22] O que � padr�o Gigabit Ethernet?'), nl,
    write('[23] O que � Metro Ethernet?'), nl,
    write('[24] O que � protocolo TCP/IP?'), nl,
    write('[25] Quais s�o os protocolos que constituem o TCP?'), nl,
    write('[26] O que � IGRP?'), nl,
    write('[27] O que � EIGRP?'), nl,
    write('[28] O que � SMTP?'), nl,
    write('[29] O que � Telnet?'), nl,
    write('[30] O que � FTP?'), nl,
    write('[31] O que � http?'), nl,
    write('[32] O que � camada de rede?'), nl,
    write('[33] O que � IPv4?'), nl,
    write('[34] O que � ICMP?'), nl,
    write('- - - - - - - - - - - - - - - - - - - - '), nl,

    read(X),
    answer(X, Y),
    write(Y).

db_question(feedback):-
    write('- - - - - - - - - - - - - - - - - - - - '), nl,
    write('Feedback '), nl,
    write('Qual � a sua nota para o app? [1,2,3...]'), nl,
    read(X), nl,
    ans_feedback(X) ,nl.

print_prompt(me):- my_icon(X), write(X), write(': '), flush_output.
print_prompt(you):- user_icon(X), write(X), write(': '), flush_output.

my_icon('Bot ').
user_icon('User ').

answer(1, 'Rede de computadores � um conjunto de sistemas de computadores e outros dispositivos contectados entre si por meio de um sistema de comunica��o. As redes de computadores permitem a troca de dados entre computadores e dispositivos de hardware e software.').
answer(2, 'As redes s�o classificadas em LAN, WAN e MAN. LAN (Local �rea Network), redes locais. WAN (Wide Area Network), � uma rede interconectada geograficamente. MAN (Metropolitan Area Network), redes com alcance metropolitano.').
answer(3, 'Um roteador � utilizado para encaminhar pacotes de informa��es ao destino adequado.').
answer(4, 'Placa de rede � o elemento empregado como interface entre o computador e o cabeamento da rede, tamb�m conhecido como adaptador.').
answer(5, 'Modem � o elemento utilizado para modular o sinal digital para que possa ser transmitido. Ele transforma sinais el�tricos digitais, que saem do computador, em um formato adequado ao meio de transmiss�o para que, atrav�s da aplica��o de t�cnicas que permitam a preserva��o da integridade dos sinais, possam ser transmitidos para longas dist�ncias por meio de uma linha telef�nica.').
answer(6, 'Um repetidor � o elemento empregado para a interliga��o de duas ou mais redes id�nticas, transformando-as em uma �nica rede l�gica.').
answer(7, 'Um switch � o elemento utilizado para interligar computadores e redes a fim de concentrar o cabeamento e permitir a conex�o de redes de tipos diferentes').
answer(8, '� um dos primeiros servi�os dispon�veis para comunica��o em rede, ele permite que usu�rios enviem e recebam mensagens eletr�nicas usando um endere�o eletr�nico como refer�ncia para localiza��o dos destinat�rios da mensagem.').
answer(9, 'O cabo coaxial atualmente n�o � mais empregado na implementa��o de redes, pois n�o � muito flex�vel e muitos problemas j� foram detectados na utiliza��o desse tipo de meio.').
answer(10, 'Cabo de par tran�ado � o mais usado em redes. Al�m de flexibilidade, garante uma velocidade na troca das informa��es compat�vel com as interfaces de redes. Geralmente � utilizado em redes locais.').
answer(11, 'Fibra �ptica tem capacidade de transmitir grande volume de informa��es.Tal caracter�stica a torna um meio interessante para ser implementada em locais com essas possibilidades.').
answer(12, 'A radiofrequ�ncia � o meio n�o f�sico utilizado para transmitir informa��es. A este tipo de meio convencionou-se chamar wireless e as tecnologias mais conhecidas que desse se utilizam s�o o telefone celular, wi-fi, wimax, sat�lite, infravermelho e bluetooth.').
answer(13, 'Topologia, em redes, est� relacionada � forma como as interfaces s�o conectadas umas �s outras.').
answer(14, 'Topologia parcialmente ligada, � onde os computadores s�o interligados de forma intermedi�ria, ou seja, n�o s�o todos os computadores que s�o interligados.').
answer(15, 'Topologia em barramento consiste em ter um meio de comunica��o comum, ou seja, todos os computadores s�o conectados a esse meio para estabelecer comunica��o entre si.').
answer(16, 'Topologia ponto a ponto caracteriza-se por enviar os dados apenas em um sentido como, por exemplo, sentido anti-hor�rio.').
answer(17, 'Topologia multiponto � tamb�m conhecido como token ring. Caracteriza-se por circular no anel, um conjunto padr�o de oito bits, chamado de token.').
answer(18, 'Topologia estrela caracteriza-se por ter um ponto central para interligar os computadores a fim de estabelecer comunica��es.').
answer(19, 'Ethernet constitui um conjunto de protocolos e t�cnicas para tornar vi�vel a comunica��o entre os computadores.').
answer(20, 'Endere�amento na Ethernet, pode-se dizer que a tecnologia ethernet oferece a comunica��o entre equipamentos de uma mesma rede f�sica sem o uso de conex�es e com servi�os.').
answer(21, 'Os endere�os MAC possuem 48 bits e s�o �nicos por interface de rede.').
answer(22, 'Gigabit Ethernet � o termo que descreve v�rias tecnologias para transmiss�o de quadros em uma rede na velocidade de 1 Gigabit por segundo, definido no padr�o IEEE 802.3-2005.').
answer(23, 'Metro Ethernet � uma tecnologia que permite utilizar redes ethernet em �reas metropolitanas e geograficamente distribu�das.').
answer(24, 'O TCP/IP � um conjunto de protocolos de comunica��o entre computadores em rede. Seu nome vem de dois protocolos: o TCP(Transmission Control Protocol) e o IP(Internet-Protocol).').
answer(25, 'O TCP/IP � um conjunto de protocolos de comunica��o.').
answer(26, 'IGRP � um protocolo propiet�rio da Cisco. Foi projetado com o objetivo de trazer melhorias para o protocolo RIP.').
answer(27, 'EIGRP � outro protocolo desenvolvido pela Cisco. � considerado um protocolo h�brido combinado as melhores caracter�sticas dos protocolos para a defini��o de rotas com base em vetores de dist�ncia e em estado de liga��o.').
answer(28, 'SMTP corresponde a um dos servi�os prestados pela camada de aplica��o. O SMTP utiliza os servi�os da camada de transporte atrav�s do protocolo TCP para transferir mensagens.').
answer(29, 'Telnet � um protocolo para acesso remoto utilizado para configura��es de m�quinas.').
answer(30, 'FTP � um protocolo de transfer�ncia de arquivos entre dois sistemas que utiliza duas conex�es: uma � empregada para dar suporte ao processo de transfer�ncia de dados e a outra conex�o � utilizada para dar suporte aos v�rios processos de controle de sess�o.').
answer(31, 'HTTP � o protocolo de transfer�ncia e hipertexto � o protocolo em que a world wide web est� baseada. � considerado um protocolo de pedido e resposta e funciona da seguinte forma: um programa cliente estabelece uma conex�o TCP com um programa servidor HTTP.').
answer(32, 'A camada de rede tem como principal fun��o encaminhar os pacotes pela rede, o que significa dizer que � nessa camada que os pacotes s�o abertos pelos roteadores para decidir se ser�o encaminhados para a rede LAN ou, ent�o, se ser�o novamente empacotados para serem retransmitidos pela rede.').
answer(33, 'IPv4 � o endere�amento IP, especificava que qualquer interface interconectada � internet precisaria ser identificada usando os 32bits dispon�veis para endere�o IP.').
answer(34, 'ICMP (Internet Control Message Protocol) � um protocolo da camada 3, usado para trocar mensagens entre equipamentos que est�o interligados na rede.').

ans_feedback(X):-
    (X >= 3),
    write('Que bom que gostou da app :)'), nl,
    write('Deseja escrever uma an�lise? (y/n)'), nl,
    read(Y),
    ((Y=='y'); (Y=='Y')),
    write('An�lise: '), nl,
    read(_A), nl,
    write('- - - - - - - - - - - - - - -'), nl,
    write('An�lise recebida com sucesso.'), nl.
ans_feedback(X):-
    X =:= 1,
    write('Que pena que voc� n�o gostou do app :('), nl,
    write('Deseja escrever algum coment�rio sobre? (y/n)'), nl,
    read(Y),
    ((Y == 'y'); (Y == 'Y')),
    write('Coment�rio: '), nl,
    read(_A), nl,
    write('- - - - - - - - - - - - - - -'), nl,
    write('Coment�rio recebido com sucesso.'), nl.
