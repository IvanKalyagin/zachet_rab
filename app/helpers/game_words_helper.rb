module GameWordsHelper
  @@text_eng = "A programming language is a system of notation for writing computer programs. Most programming languages are text-based formal languages, but they may also be graphical."
  @@text_rus = "Язык программирования - это система обозначений для написания компьютерных программ. Большинство языков программирования - это текстовые формальные языки, но они также могут быть графическими."
  @@word_eng = ['abandon', 'ability', 'able', 'about', 'above', 'abroad', 'absolute', 'absolutely', 'abuse',
    'academic', 'accept', 'access', 'accident', 'accompany', 'accomplish', 'according', 'account', 'accurate',
    'accuse', 'achieve', 'achievement', 'block', 'blood', 'blow', 'blue', 'board', 'boat', 'body', 'cabin', 'cabinet',
    'cable', 'cake', 'calculate', 'call', 'camera', 'camp', 'campaign', 'campus', 'can', 'drawing', 'dream', 'dress',
    'drink', 'drive', 'driver', 'drop', 'environment', 'environmental', 'episode', 'equal', 'equally', 'equipment',
    'era', 'error', 'escape', 'especially', 'essay', 'freedom', 'freeze', 'fresh', 'friend', 'friendly', 'friendship',
    'from', 'front', 'fruit', 'frustration', 'fuel', 'full', 'fully', 'fun', 'function', 'fund', 'fundamental',
    'funding', 'funeral', 'funny', 'green', 'grocery', 'ground', 'group', 'grow', 'growing', 'growth', 'guarantee',
    'guard', 'guess', 'guest', 'home', 'homeless', 'honest', 'honey', 'honor', 'hope', 'horizon', 'horror', 'horse',
    'major', 'make', 'maker', 'nature', 'near', 'mountain'
  ]
  @@word_rus = ['отказаться', 'способность', 'способность', 'около', 'выше', 'за границей', 'абсолютно', 'совершенно', 'злоупотребление',
    'академический', 'принять', 'доступ', 'случайность', 'сопровождать', 'совершить', 'согласно', 'счет', 'точный',
    'обвинить', 'добиться', 'достижение', 'блокировать', 'кровь', 'ударить', 'синий', 'борт', 'лодка', 'тело', 'кабина', 'шкаф',
    'кабель', 'торт', 'вычислить', 'звонок', 'камера', 'лагерь', 'кампания', 'кампус', 'можно', 'рисунок', 'мечта', 'платье',
    'напиток', 'драйв', 'водитель', 'капля', 'среда', 'экологический', 'эпизод', 'равно', 'равно', 'оборудование',
    'эпоха', 'ошибка', 'побег', 'особенно', 'эссе', 'свобода', 'заморозка', 'свежесть', 'друг', 'приятель', 'дружба',
    'передний', 'плод', 'разочарование', 'топливо', 'полный', 'полностью', 'веселье', 'функция', 'фонд', 'фундаментальный',
    'финансирование', 'похороны', 'забавный', 'зеленый', 'бакалея', 'земля', 'группа', 'рост', 'растущий', 'гарантия',
    'страж', 'догадка', 'гость', 'дом', 'город', 'честный', 'милая', 'честь', 'надежда', 'горизонт', 'ужас', 'конь',
    'майор', 'сделать', 'создатель', 'природа', 'рядом', 'гора'
  ]
  @@predl_eng = ['That we can call these delicate creatures ours, And not their appetites!',
    "But then begins a journey in my head to work my mind when body's work's expired",
    "What immortal hand or eye could frame thy fearful symmetry?",
    'He has many subjects to go to each school day: English, art, mathematics, gym, and history.',
    "Most people don't think about numerical representations of quantity, but they play a big part in life.",
    'Christmas is widely celebrated and enjoyed across the United States and the world.',
    'For those to whom much is given, much is required. It is the famous quote from Bible',
    'He learned the hardest lesson of his life and had the scars, both physical and mental, to prove it.',
    'There were a lot of paintings of monkeys waving bamboo sticks in the gallery.',
    'People generally approve of dogs eating cat food but not cats eating dog food.'
  ]
  @@predl_rus = ['Что мы можем назвать этих нежных созданий своими, А не их аппетитами!',
    'Но затем начинается путешествие в моей голове, чтобы работать над своим разумом, когда срок работы тела истек',
    'Какая бессмертная рука или глаз могли бы обрамить вашу устрашающую симметрию?',
    'Каждый школьный день у него много предметов: английский язык, искусство, математика, гимнастика и история'.
    'Большинство людей не думают о численном представлении количества, но они играют большую роль в жизни'.
    'Рождество широко празднуется и празднуется в Соединенных Штатах и ​​во всем мире.',
    'От того, кому много дано, много и требуется. Это известная цитата из Библии',
    'Он усвоил самый тяжелый урок в своей жизни, и в доказательство этого у него были шрамы, как физические, так и душевные'.
    'В галерее было много картин с обезьянами, размахивающими бамбуковыми палками.',
    'Люди обычно одобряют собак, которые едят кошачий корм, но не кошек, которые едят собачий корм'.
  ]
end
