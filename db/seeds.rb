# frozen_string_literal: true

FirstCompliment.destroy_all
LastCompliment.destroy_all
SingleCompliment.destroy_all

first = ['Сегодня ты...', 'В день, когда Анжелика появилась на свет, врачи сказали что она...', 'Я проснулся и'\
         'увидел, что сегодня ты...']

last = ['ангельски прекрасная (´｡• ω •｡`)', 'лучезарная и ослепительная (っ˘ω˘ς )',
        'чарующая и сказочная (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧', 'таинственная и желанная (´ ω `♡)',
        'завораживающе красивая ⊃｡•́‿•̀｡)⊃', 'сияющая и ненаглядная (つ✧ω✧)つ',
        'милая и нежная (´｡• ω •｡)', 'космическая и неземная Σ>―(〃°ω°〃)♡→',
        'неподрожаемая и особенная (ღ˘⌣˘ღ)', 'светлая и улыбчивая (ノ*°▽°*)',
        'слаще сахара (っ˘ڡ˘ς)', 'притягательнее чем горизонт событий (^_-)≡☆']

single = ['Ты просто самое яркое и теплое солнышко', 'Твои волосы пахнут Парижем... ',
          'Ты самый изысканный наркотик', 'Ты подарила мне лето',
          'Вибрирую рядом с тобой', 'Лучший Match моей жизни', 'Ты лучше шаурмы',
          'Но ничто не обезболивало меня так, как она и её губы в меланхолии',
          'Не хочу дышать, вдыхая не тебя', 'Хочу идти с тобою... в комплекте',
          'Заставляешь моё сердце биться быстрее', 'Люблю когда подушка пахнет тобой',
          'Мне больше нравились блондинки до того момента, когда я увидел тебя',
          'Нежностью губ твоих хочу захлебнуться и в агонии страсти сгореть', 'Всё будет хорошо']

first.each { |com| FirstCompliment.create(title: com) }
last.each { |com| LastCompliment.create(title: com) }
single.each { |com| SingleCompliment.create(title: com) }
