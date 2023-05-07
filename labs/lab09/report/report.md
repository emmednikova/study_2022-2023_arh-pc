---
## Front matter
title: "Лабораторная работа №9"
subtitle: "Программирование цикла. Обработка аргументов командной строки"
author: "Медникова Екатерина Михайловна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ с использованием циклов и обработкой аргументов командной строки.

# Теоретическое введение

Стек — это структура данных, организованная по принципу LIFO («Last In — First Out» или «последним пришёл — первым ушёл»). Стек является частью архитектуры процессора и реализован на аппаратном уровне. Для работы со стеком в процессоре есть специальные регистры (ss, bp, sp) и команды.

Основной функцией стека является функция сохранения адресов возврата и передачи аргументов при вызове процедур. Кроме того, в нём выделяется память для локальных переменных и могут временно храниться значения регистров.

Стек имеет вершину, адрес последнего добавленного элемента, который хранится в регистре esp (указатель стека). Противоположный конец стека называется дном. Значение, помещённое в стек последним, извлекается первым. При помещении значения в стек указатель стека уменьшается, а при извлечении — увеличивается.

# Выполнение лабораторной работы

1. Создала каталог для программам лабораторной работы No 9, перешла в него и создала файл lab9-1.asm.

![Создание каталога и файла](image/снимок1.png){#fig:001 width=70%}

2. Ввела в файл lab9-1.asm текст программы из листинга 9.1. Создала исполняемый файл и проверила его работу.

![Ввод текста программы из листинга 9.1](image/снимок2.png){#fig:002 width=70%}

![Создание файла и проверка его работы](image/снимок21.png){#fig:003 width=70%}

3. Изменила текст программы, добавив изменение значения регистра ecx в цикле. При попытке создать исполняемый файл и проверить его работу, цикл получился бесконечным. 

![Изменение текста программы](image/снимок3.png){#fig:004 width=70%}

![Бесконечный цикл](image/снимок31.png){#fig:005 width=70%}

Внесла изменения в текст программы, добавив команды push и pop (добавления в стек и извлечения из стека) для сохранения значения счетчика цикла loop.

![Внесение изменений в программу](image/снимок32.png){#fig:006 width=70%}

Создала исполняемый файл и проверила его работу.

![Создание файла и проверка его работы](image/снимок33.png){#fig:007 width=70%}

4. Создала файл lab9-2.asm в каталоге ~/work/arch-pc/lab09 и ввела в него текст программы из листинга 9.2.

![Создание файла](image/снимок4.png){#fig:008 width=70%}

![Ввод текста из листинга 9.2](image/снимок41.png){#fig:009 width=70%}

Создала исполняемый файл и запустила его, указав аргументы. Программа вывела все три аргумента, но в разном порядке.

![Запуск программы](image/снимок42.png){#fig:0010 width=70%}

5. Создала файл lab9-3.asm в каталоге ~/work/arch-pc/lab09 и ввела в него текст программы из листинга 9.3.

![Создание файла](image/снимок5.png){#fig:0011 width=70%}

![Ввод программы из листинга 9.3](image/снимок51.png){#fig:0012 width=70%}

Создала исполняемый файл и запустила его, указав аргументы.

![Запуск программы](image/снимок52.png){#fig:0013 width=70%}

6. Изменила текст программы из листинга 9.3 для вычисления произведения аргументов командной строки.

![Изменение текста программы](image/снимок6.png){#fig:0014 width=70%}

Создала исполняемый файл и проверила его работу.

![Создание файла и проверка его работы](image/снимок61.png){#fig:0015 width=70%}

# Самостоятельная работа

1. Создала файл для самостоятельной работы.

![Создание файла для самостоятельной работы](image/самр.png){#fig:0016 width=70%}

2. Написала в созданный файл текст программы.

![Текст программы](image/самр2.png){#fig:0017 width=70%}

![Текст программы](image/самр3.png){#fig:0018 width=70%}

3. Создала исполняемый файл и проверила его работу.

![Создание файла и проверка его работы](image/самр4.png){#fig:0019 width=70%}

# Выводы

Приобрела навыки написания программ с использованием циклов и обработкой аргументов командной строки.

