# Лабораторные работы по дисциплине "Информационные системы и базы данных" ИТМО, 3 курс.
В ветках `database-1, database-2, database-3, database-4` распологаются файлы с расширением `.sql`, отчеты и диаграммы, соответствующие каждой из лабораторных работ.

## Далее приведено описание заданий:

### Лабораторная работа № 1

- На основе предложенной предметной области (текста) составить ее описание. Из полученного описания выделить сущности, их атрибуты и связи.
- Составить инфологическую модель.
- Составить даталогическую модель. При описании типов данных для атрибутов должны использоваться типы из СУБД `PostgreSQL`.
- Реализовать даталогическую модель в `PostgreSQL`. При описании и реализации даталогической модели должны учитываться ограничения целостности, которые характерны для полученной предметной области.
- Заполнить созданные таблицы тестовыми данными.

Для создания объектов базы данных у каждого студента есть своя схема. Название схемы соответствует имени пользователя в базе studs (sXXXXXX). Каждый студент должен использовать свою схему при работе над лабораторной работой №1.

Команда для подключения к базе `studs`:

`psql -h pg -d studs`

**Описание предметной области, по которой должна быть построена доменная модель:**

Выкрикивать успокаивающие слова было трудно, и Флойд не был уверен, что она слышит его в реве раскаленного газа.
Однако она уже не держалась за него так отчаянно, и ему удалось сделать пару глубоких вдохов.


### Лабораторная работа № 2

Для отношений, полученных при построении предметной области из лабораторной работы №1, выполнить следующие действия: 
- опишите функциональные зависимости для отношений полученной схемы (минимальное множество); 
- приведите отношения в 3NF (как минимум). Постройте схему на основеNF (как минимум). Постройте схему на основе полученных отношений; 
- опишите изменения в функциональных зависимостях, произошедшие после преобразования в 3NF (как минимум). Постройте схему на основе NF; 
- преобразуйте отношения в BCNF. Докажите, что полученные отношения представлены в BCNF;
- какие денормализации будут полезны для вашей схемы? Приведите подробное описание;

### Лаборатоная работа № 3

Составить запросы на языке SQL (пункты 1-7) к базе данных "Учебный процесс" и выполнить их.

1.	Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:

| условие | значение |
| ----------- | ----------- |
| Таблицы | Н_ЛЮДИ, Н_СЕССИЯ |
|Вывести атрибуты | Н_ЛЮДИ.ИД, Н_СЕССИЯ.УЧГОД |
| Фильтры (AND) |  a) Н_ЛЮДИ.ФАМИЛИЯ = Афанасьев |
| Фильтры (AND) | b) Н_СЕССИЯ.ИД < 14 |
| Фильтры (AND) | c) Н_СЕССИЯ.ИД > 14 |
|Вид соединения| RIGHT JOIN |

2.	Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:

| условие | значение |
| ----------- | ----------- |
| Таблицы | Н_ЛЮДИ, Н_ОБУЧЕНИЯ, Н_УЧЕНИКИ |
|Вывести атрибуты | Н_ЛЮДИ.ФАМИЛИЯ, Н_ОБУЧЕНИЯ.ЧЛВК_ИД, Н_УЧЕНИКИ.НАЧАЛО |
| Фильтры (AND) |  a) Н_ЛЮДИ.ФАМИЛИЯ > Афанасьев |
| Фильтры (AND) | b) Н_ОБУЧЕНИЯ.ЧЛВК_ИД = 11251 |
|Вид соединения| LEFT JOIN |

3.	Вывести число отчеств без учета повторений.
При составлении запроса нельзя использовать DISTINCT.
4.	В таблице Н_ГРУППЫ_ПЛАНОВ найти номера планов, по которым обучается (обучалось) более 2 групп на очной форме обучения. Для реализации использовать соединение таблиц.
5.	Выведите таблицу со средними оценками студентов группы 4100 (Номер, ФИО, Ср_оценка), у которых средняя оценка меньше средней оценк(е|и) в группе 1101.
6.	Получить список студентов, зачисленных после первого сентября 2012 года на первый курс очной или заочной формы обучения. В результат включить:
- номер группы;
- номер, фамилию, имя и отчество студента;
- номер и состояние пункта приказа;

Для реализации использовать подзапрос с EXISTS.

7.	Вывести список людей, не являющихся или не являвшихся студентами СПбГУ ИТМО (данные, о которых отсутствуют в таблице Н_УЧЕНИКИ). В запросе нельзя использовать DISTINCT.

### Лабораторная работа № 4

- Составить запросы на языке SQL (пункты 1-2).
- Для каждого запроса предложить индексы, добавление которых уменьшит время выполнения запроса (указать таблицы/атрибуты, для которых нужно добавить индексы, написать тип индекса; объяснить, почему добавление индекса будет полезным для данного запроса).
- Для запросов 1-2 необходимо составить возможные планы выполнения запросов. Планы составляются на основании предположения, что в таблицах отсутствуют индексы. Из составленных планов необходимо выбрать оптимальный и объяснить свой выбор.
- Изменятся ли планы при добавлении индекса и как?
- Для запросов 1-2 необходимо добавить в отчет вывод команды EXPLAIN ANALYZE [запрос]
- Подробные ответы на все вышеперечисленные вопросы должны присутствовать в отчете (планы выполнения запросов должны быть нарисованы, ответы на вопросы - представлены в текстовом виде).
  
1.	Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:

| условие | значение |
| ----------- | ----------- |
| Таблицы | Н_ЛЮДИ, Н_СЕССИЯ |
|Вывести атрибуты |  Н_ЛЮДИ.ФАМИЛИЯ, Н_СЕССИЯ.ЧЛВК_ИД |
| Фильтры (AND) |  a) Н_ЛЮДИ.ФАМИЛИЯ < Иванов |
| Фильтры (AND) | b) Н_СЕССИЯ.ДАТА = 2004-01-17 |
|Вид соединения| INNER JOIN |

2.	Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:

| условие | значение |
| ----------- | ----------- |
| Таблицы | Н_ЛЮДИ, Н_ВЕДОМОСТИ, Н_СЕССИЯ |
|Вывести атрибуты |  Н_ЛЮДИ.ИМЯ, Н_ВЕДОМОСТИ.ЧЛВК_ИД, Н_СЕССИЯ.ЧЛВК_ИД |
| Фильтры (AND) |  a) Н_ЛЮДИ.ИД = 100012 |
| Фильтры (AND) | b) Н_СЕССИЯ.ЧЛВК_ИД < 100622 |
|Вид соединения| LEFT JOIN |

Команда для подключения к базе данных `ucheb`:

`psql -h pg -d ucheb`

