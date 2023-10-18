var _speakers = {
	zhara: {
		name: "Zhara",
		image: sZhara_Idle_Down
	},
	knnovar: {
		name: "Knnovar",
		image: sKnnovar_idle_down
	},
	godhard:{
		name: "GodHard",
		image: sGodHard_Idle_Down
	},
	system:{
		name: "Narrador",
		image: sNarrador_Idle_Down
	},
	guia:{
		name: "Guia",
		image: sGuia_Idle_Down
	},
	hito:{
		name: "Hito",
		image: sHito_Idle_Down
	},
	corvo: {
		name: "Corvo",
		image: sCorvo_Idle_Down
	}
}


global.dialogue = {}

global.dialogue.knnovar_meet =[
{
	speaker: _speakers.zhara,
	message: "Perdao... voce sabe onde estamos?"
},
{
	speaker: _speakers.knnovar,
	message: "Que? quem e voce em primeiro lugar?"
},
{
	speaker: _speakers.zhara,
	message: "Nossa, onde estao meus modos, me chamo Zhara, e voce?"
},
{
	speaker: _speakers.knnovar,
	message: "Foi mal, to muito na defensiva, esse lugar me da arrepios"
},
{
	speaker: _speakers.knnovar,
	message: "Lembre-se bem, meu nome e Knnovar... ja deve ter ouvido falar de mim."
},
{
	speaker: _speakers.knnovar,
	message: "Nao precisa pedir autografo, estamos presos aqui nesse lugar"
},
{
	speaker: _speakers.zhara,
	message: "Mas eu..."
},
{
	speaker: _speakers.knnovar,
	message: "Olha, se controle, eu nao gosto que fiquem muito em cima, me sufoca."
},
{
	speaker: _speakers.knnovar,
	message: "Que tal voce ir conversar com aquele carinha de branco ali em baixo?"
},
{
	speaker: _speakers.knnovar,
	message: "Tenho alguns assuntos a resolver, vai la vai."
}
]

global.dialogue.godhard_meet =[
{
	speaker: _speakers.zhara,
	message: "Parece que esse lugar esta me fazendo encontrar todo tipo de pessoa"
},
{
	speaker: _speakers.godhard,
	message: "Vejo que voce tem uma luz muito forte, Paladina. Como se chama?"
},
{
	speaker: _speakers.zhara,
	message: "Ah! Ola, me chamo Zhara, e voce quem seria?"
},
{
	speaker: _speakers.godhard,
	message: "Prazer, pode me chamar de GodHard, sou um Mago Branco"
},
{
	speaker: _speakers.zhara,
	message: "Uau, um Mago Branco de verdade! Achei que só as grandes familias de CampbellTown os treinavam."
},
{
	speaker: _speakers.godhard,
	message: "Para ser sincero... Bom, na verdade, deixa para outra hora."
},
{
	speaker: _speakers.godhard,
	message: "Voce esta viajando sozinha? me encontrei com aquele... ser, a caminho daqui, pode se juntar a nos."
},
{
	speaker: _speakers.zhara,
	message: "Realmente nao tem problema? ele nao parece a pessoa mais amigavel"
},
{
	speaker: _speakers.godhard,
	message: "Pode ficar em paz, ele nao e tao ruim depois que voce se acostuma."
},
{
	speaker: _speakers.zhara,
	message: "Bom, pois sera uma honra estar com voces, podem contar com a minha espada."
},
{
	speaker: _speakers.system,
	message: "Segredos eram mantidos enquanto uma amizade improvavel se formava!"
},

{
	speaker: _speakers.system,
	message: "Muito a de se revelar a medida que arriscam suas vidas pelo Labirinto!"
}
]

global.dialogue.guide_meet =
[{
	speaker: _speakers.guia,
	message: "Hora... parece que temos mais uma convidada"
},
{
	speaker: _speakers.zhara,
	message: "O que?... Quando eu..."
},
{
	speaker: _speakers.guia,
	message: "Sei que deve estar cheia de duvidas"
},
{
	speaker: _speakers.guia,
	message: "Tudo sera respondido no seu tempo"
},
{
	speaker: _speakers.guia,
	message: "Voce esta em uma sala deslocada do espaco-tempo, conhecida como Lobby"
},
{
	speaker: _speakers.guia,
	message: "Recomendo que converse com os outros aqui presentes, eles podem lhe ser de grande ajuda"
},
{
	speaker: _speakers.zhara,
	message: "Ainda estou confusa... preciso de um tempo para me recompor"
},
{
	speaker: _speakers.guia,
	message: "Como desejar..."
},
{
	speaker: _speakers.guia,
	message: "Depois de conversar com todos aqui, me procure no final desta estrada, estarei esperando por voces"
},
{
	speaker: _speakers.system,
	message: "Utilize as setas direcionais do Teclado para se movimentar pelo mapa"
},
{
	speaker: _speakers.system,
	message: "Ao se aproximar de alguem, aperte a tecla ENTER para interagir"
}
]

global.dialogue.guide_explain =
[
{
	speaker: _speakers.guia,
	message: "Vejo que formaram um grupo interessante, bem, deveria começar as devidas apresentacoes"
},
{
	speaker: _speakers.guia,
	message: "Eu sou o Guia do labirinto, para aqueles que buscam o poder que os lendarios artefatos podem prover"
},
{
	speaker: _speakers.guia,
	message: "Conheco o interior deste labirinto como a palma da minha mao"
},
{
	speaker: _speakers.guia,
	message: "Atras de mim esta um portal que os levara diretamente ao labirinto"
},
{
	speaker: _speakers.guia,
	message: "Devido a sua natureza, os desafios esperando por voces a partir daqui sao incertos"
},
{
	speaker: _speakers.guia,
	message: "Se puderem se superar e me trouxerem o chifre de um minotauro, poderei abrir caminho para voces"
},
{
	speaker: _speakers.guia,
	message: "Caso consigam, voces se provaram dignos, e so entao pedirei um favor especial a voces"
},
{
	speaker: _speakers.guia,
	message: "O que me dizem?"
},
{
	speaker: _speakers.godhard,
	message: "Eu confio no seu julgamento, Zhara."
},
{
	speaker: _speakers.knnovar,
	message: "Vamos pelo mais pratico, mas esse cara ai, nao sei nao viu. O que voce acha Paladina?"
},
{
	speaker: _speakers.zhara,
	message: "Parece que nao teremos muita escolha a nao ser lidar com este minotauro..."
},
{
	speaker: _speakers.zhara,
	message: "Certo, Guia, enfrentaremos os perigos a frente e voltaremos triunfantes!"
},
{
	speaker: _speakers.guia,
	message: "Sabia que fariam a escolha certa, hehe."
},
{
	speaker: _speakers.guia,
	message: "Podem ficar proximos ao portal, e boa sorte."
},
{
	speaker: _speakers.knnovar,
	message: "hehe?? esse cara realmente nao me desce"
},
{
	speaker: _speakers.godhard,
	message: "Mas olhe pelo lado bom..."
},
{
	speaker: _speakers.zhara,
	message: "O que?"
},
{
	speaker: _speakers.godhard,
	message: "Eu so digo a frase, voce procura o lado bom kkkkkkkkkkkk"
},
{
	speaker: _speakers.zhara,
	message: "..."
},
{
	speaker: _speakers.knnovar,
	message: "..."
},
{
	speaker: _speakers.hito,
	message: "..."
},
{
	speaker: _speakers.corvo,
	message: "..."
},
{
	speaker: _speakers.godhard,
	message: "Nossa composicao de grupo nos tras pelomenos 90% de chance de voltarmos vivos"
},
{
	speaker: _speakers.zhara,
	message: "Espero nao desapontar voces com as minhas habilidades"
},
{
	speaker: _speakers.zhara,
	message: "Vamos, para a batalha que nos aguarda!"
},
{
	speaker: _speakers.system,
	message: "Voce esta prestes a entrar em um ambiente hostil, inimigos estao a sua espera!"
},
{
	speaker: _speakers.system,
	message: "Encoste em um inimigo para iniciar uma batalha, uma vez dentro dela, nao sera capaz de sair ate derrotar todos"
},
{
	speaker: _speakers.system,
	message: "Utilize as setas direcionais do Teclado para navegar entre os menus no seu turno"
},
{
	speaker: _speakers.system,
	message: "Utilize a tecla ENTER para selecionar o menu desejado"
},
{
	speaker: _speakers.system,
	message: "Em batalha, algumas habilidades permitem o uso da tecla SHIFT para selecionar varios alvos (WIP)"
},
{
	speaker: _speakers.system,
	message: "Caso queira retornar para o menu anterior, use a opcao Voltar ou aperte a tecla ESC"
}
]

global.dialogue.hito_meet =
[
{
	speaker: _speakers.zhara,
	message: "Esse homem me parece familiar..."
},
{
	speaker: _speakers.zhara,
	message: "Senhor, me perdoe, por algum acaso..."
},
{
	speaker: _speakers.hito,
	message: "Senhor??? olha, pelomenos um pouco de respeito, nem tenho tanta idade assim"
},
{
	speaker: _speakers.hito,
	message: "Voce e uma crianca do vilarejo Green River nao e?"
},
{
	speaker: _speakers.zhara,
	message: "Entao aquelas historias sobre os magos na montanha do conhecimento, eram verdadeiros??"
},
{
	speaker: _speakers.hito,
	message: "Existem muitas verdades nesse mundo minha jovem, me chamo Hito, sou um simples mago errante"
},
{
	speaker: _speakers.zhara,
	message: "Prazer Hito, estou honrada em conhecer um mago de verdade!"
},
{
	speaker: _speakers.zhara,
	message: "Me chamo Zhara, caso nao seja pedir muito, gostaria de se juntar ao meu grupo?"
},
{
	speaker: _speakers.hito,
	message: "Me parece uma otima oportunidade de esticar as juntas, claro, estou com voce"
}
]

