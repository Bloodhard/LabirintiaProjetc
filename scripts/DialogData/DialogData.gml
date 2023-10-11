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
	message: "Avemaria, mais um desses polidos, eu nao aguento mais gente da sua laia"
},
{
	speaker: _speakers.knnovar,
	message: "Lembre-se bem, meu nome e Knnovar... Knnovar o Grande, se esquecer eu te mato."
},
{
	speaker: _speakers.knnovar,
	message: "Agora da o fora, tenho mais o que fazer"
},
{
	speaker: _speakers.zhara,
	message: "Mas eu..."
},
{
	speaker: _speakers.knnovar,
	message: "Mano, voce ta aqui ainda????? RALA"
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
	message: "Uau, um Mago Branco de verdade! Achei que só as grandes familias os treinavam."
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