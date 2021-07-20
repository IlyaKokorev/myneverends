# frozen_string_literal: true

require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

precom = ['Сегодня ты самая...']
pastcom = ['ангельски прекрасная', 'лучезарная и ослепительная', 'чарующая и сказочная',
           'таинственная и желанная', 'завораживюще красивая', 'сияющая и ненаглядная',
           'милая и нежная', 'космическая и неземная', 'неподрожаемая и особенная',
           'светлая и улыбчивая']

sincom = ['Ты просто самое яркое и теплое солнышко', 'Твои волосы пахнут Парижем... ',
          'Ты самый изысканный наркотик', 'Я навсегда запомнил 18.07.2021',
          'Вибрирую рядом с тобой']

precom.each { |com| Precom.create(title: com) }
pastcom.each { |com| Pastcom.create(title: com) }
sincom.each { |com| Sincom.create(title: com) }
