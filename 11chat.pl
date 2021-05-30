init:-
    nl,
    writeln('Welcome ao Chatbot'),
    repeat, test_internal.

test_internal:-
    nl,
    write('- - - - - - - - - - - - - - - - - - - - '), nl,
    print_prompt(me),
    write('Qual é a sua dúvida?'), nl,
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
    write('Qual é a sua dúvida?'), nl,
    write('[1] O que é uma rede de computadores?'), nl,
    write('[2] Qual a classificação de redes?'), nl,
    write('[3] O que é um roteador?'), nl,
    write('[4] O que é uma placa de redes?'), nl,
    write('[5] O que é um modem?'), nl,
    write('[6] O que é um repetidor?'), nl,
    write('[7] O que é um switch?'), nl,
    write('[8] O que é correio eletrônico?'), nl,
    write('[9] O que é um cabo coaxial?'), nl,
    write('[10] O que é um cabo de par trançado?'), nl,
    write('[11] O que é uma uma fribra óptica?'), nl,
    write('[12] O que é Radiofrequência?'), nl,
    write('[13] O que são topologias de redes?'), nl,
    write('[14] O que é uma topologia parcialmente ligada?'), nl,
    write('[15] O que é uma topologia em barramento?'), nl,
    write('[16] O que é uma topologia ponto a ponto?'), nl,
    write('[17] O que é uma topologia multiponto?'), nl,
    write('[18] O que é uma topologia estrela?'), nl,
    write('[19] O que é Ethernet?'), nl,
    write('[20] O que é endereçamento na ethernet e quais são os seus serviços?'), nl,
    write('[21] O que é um protocolo MAC?'), nl,
    write('[22] O que é padrão Gigabit Ethernet?'), nl,
    write('[23] O que é Metro Ethernet?'), nl,
    write('[24] O que é protocolo TCP/IP?'), nl,
    write('[25] Quais são os protocolos que constituem o TCP?'), nl,
    write('[26] O que é IGRP?'), nl,
    write('[27] O que é EIGRP?'), nl,
    write('[28] O que é SMTP?'), nl,
    write('[29] O que é Telnet?'), nl,
    write('[30] O que é FTP?'), nl,
    write('[31] O que é http?'), nl,
    write('[32] O que é camada de rede?'), nl,
    write('[33] O que é IPv4?'), nl,
    write('[34] O que é ICMP?'), nl,
    write('- - - - - - - - - - - - - - - - - - - - '), nl,

    read(X),
    answer(X, Y),
    write(Y).

db_question(feedback):-
    write('- - - - - - - - - - - - - - - - - - - - '), nl,
    write('Feedback '), nl,
    write('Qual é a sua nota para o app? [1,2,3...]'), nl,
    read(X), nl,
    ans_feedback(X) ,nl.

print_prompt(me):- my_icon(X), write(X), write(': '), flush_output.
print_prompt(you):- user_icon(X), write(X), write(': '), flush_output.

my_icon('Bot ').
user_icon('User ').

answer(1, 'Rede de computadores é um conjunto de sistemas de computadores e outros dispositivos contectados entre si por meio de um sistema de comunicação. As redes de computadores permitem a troca de dados entre computadores e dispositivos de hardware e software.').
answer(2, 'As redes são classificadas em LAN, WAN e MAN. LAN (Local Área Network), redes locais. WAN (Wide Area Network), é uma rede interconectada geograficamente. MAN (Metropolitan Area Network), redes com alcance metropolitano.').
answer(3, 'Um roteador é utilizado para encaminhar pacotes de informações ao destino adequado.').
answer(4, 'Placa de rede é o elemento empregado como interface entre o computador e o cabeamento da rede, também conhecido como adaptador.').
answer(5, 'Modem é o elemento utilizado para modular o sinal digital para que possa ser transmitido. Ele transforma sinais elétricos digitais, que saem do computador, em um formato adequado ao meio de transmissão para que, através da aplicação de técnicas que permitam a preservação da integridade dos sinais, possam ser transmitidos para longas distâncias por meio de uma linha telefônica.').
answer(6, 'Um repetidor é o elemento empregado para a interligação de duas ou mais redes idênticas, transformando-as em uma única rede lógica.').
answer(7, 'Um switch é o elemento utilizado para interligar computadores e redes a fim de concentrar o cabeamento e permitir a conexão de redes de tipos diferentes').
answer(8, 'É um dos primeiros serviços disponíveis para comunicação em rede, ele permite que usuários enviem e recebam mensagens eletrônicas usando um endereço eletrônico como referência para localização dos destinatários da mensagem.').
answer(9, 'O cabo coaxial atualmente não é mais empregado na implementação de redes, pois não é muito flexível e muitos problemas já foram detectados na utilização desse tipo de meio.').
answer(10, 'Cabo de par trançado é o mais usado em redes. Além de flexibilidade, garante uma velocidade na troca das informações compatível com as interfaces de redes. Geralmente é utilizado em redes locais.').
answer(11, 'Fibra óptica tem capacidade de transmitir grande volume de informações.Tal característica a torna um meio interessante para ser implementada em locais com essas possibilidades.').
answer(12, 'A radiofrequência é o meio não físico utilizado para transmitir informações. A este tipo de meio convencionou-se chamar wireless e as tecnologias mais conhecidas que desse se utilizam são o telefone celular, wi-fi, wimax, satélite, infravermelho e bluetooth.').
answer(13, 'Topologia, em redes, está relacionada à forma como as interfaces são conectadas umas às outras.').
answer(14, 'Topologia parcialmente ligada, é onde os computadores são interligados de forma intermediária, ou seja, não são todos os computadores que são interligados.').
answer(15, 'Topologia em barramento consiste em ter um meio de comunicação comum, ou seja, todos os computadores são conectados a esse meio para estabelecer comunicação entre si.').
answer(16, 'Topologia ponto a ponto caracteriza-se por enviar os dados apenas em um sentido como, por exemplo, sentido anti-horário.').
answer(17, 'Topologia multiponto é também conhecido como token ring. Caracteriza-se por circular no anel, um conjunto padrão de oito bits, chamado de token.').
answer(18, 'Topologia estrela caracteriza-se por ter um ponto central para interligar os computadores a fim de estabelecer comunicações.').
answer(19, 'Ethernet constitui um conjunto de protocolos e técnicas para tornar viável a comunicação entre os computadores.').
answer(20, 'Endereçamento na Ethernet, pode-se dizer que a tecnologia ethernet oferece a comunicação entre equipamentos de uma mesma rede física sem o uso de conexões e com serviços.').
answer(21, 'Os endereços MAC possuem 48 bits e são únicos por interface de rede.').
answer(22, 'Gigabit Ethernet é o termo que descreve várias tecnologias para transmissão de quadros em uma rede na velocidade de 1 Gigabit por segundo, definido no padrão IEEE 802.3-2005.').
answer(23, 'Metro Ethernet é uma tecnologia que permite utilizar redes ethernet em áreas metropolitanas e geograficamente distribuídas.').
answer(24, 'O TCP/IP é um conjunto de protocolos de comunicação entre computadores em rede. Seu nome vem de dois protocolos: o TCP(Transmission Control Protocol) e o IP(Internet-Protocol).').
answer(25, 'O TCP/IP é um conjunto de protocolos de comunicação.').
answer(26, 'IGRP é um protocolo propietário da Cisco. Foi projetado com o objetivo de trazer melhorias para o protocolo RIP.').
answer(27, 'EIGRP é outro protocolo desenvolvido pela Cisco. É considerado um protocolo híbrido combinado as melhores características dos protocolos para a definição de rotas com base em vetores de distância e em estado de ligação.').
answer(28, 'SMTP corresponde a um dos serviços prestados pela camada de aplicação. O SMTP utiliza os serviços da camada de transporte através do protocolo TCP para transferir mensagens.').
answer(29, 'Telnet é um protocolo para acesso remoto utilizado para configurações de máquinas.').
answer(30, 'FTP é um protocolo de transferência de arquivos entre dois sistemas que utiliza duas conexões: uma é empregada para dar suporte ao processo de transferência de dados e a outra conexão é utilizada para dar suporte aos vários processos de controle de sessão.').
answer(31, 'HTTP é o protocolo de transferência e hipertexto é o protocolo em que a world wide web está baseada. É considerado um protocolo de pedido e resposta e funciona da seguinte forma: um programa cliente estabelece uma conexão TCP com um programa servidor HTTP.').
answer(32, 'A camada de rede tem como principal função encaminhar os pacotes pela rede, o que significa dizer que é nessa camada que os pacotes são abertos pelos roteadores para decidir se serão encaminhados para a rede LAN ou, então, se serão novamente empacotados para serem retransmitidos pela rede.').
answer(33, 'IPv4 é o endereçamento IP, especificava que qualquer interface interconectada à internet precisaria ser identificada usando os 32bits disponíveis para endereço IP.').
answer(34, 'ICMP (Internet Control Message Protocol) é um protocolo da camada 3, usado para trocar mensagens entre equipamentos que estão interligados na rede.').

ans_feedback(X):-
    (X >= 3),
    write('Que bom que gostou da app :)'), nl,
    write('Deseja escrever uma análise? (y/n)'), nl,
    read(Y),
    ((Y=='y'); (Y=='Y')),
    write('Análise: '), nl,
    read(_A), nl,
    write('- - - - - - - - - - - - - - -'), nl,
    write('Análise recebida com sucesso.'), nl.
ans_feedback(X):-
    X =:= 1,
    write('Que pena que você não gostou do app :('), nl,
    write('Deseja escrever algum comentário sobre? (y/n)'), nl,
    read(Y),
    ((Y == 'y'); (Y == 'Y')),
    write('Comentário: '), nl,
    read(_A), nl,
    write('- - - - - - - - - - - - - - -'), nl,
    write('Comentário recebido com sucesso.'), nl.
