SELECT Н_ЛЮДИ.ФАМИЛИЯ, Н_СЕССИЯ.ЧЛВК_ИД FROM Н_ЛЮДИ
INNER JOIN Н_СЕССИЯ ON Н_СЕССИЯ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
WHERE Н_ЛЮДИ.ФАМИЛИЯ < 'Иванов'
AND Н_СЕССИЯ.ДАТА = '2004-01-17'::timestamp;

SELECT Н_ЛЮДИ.ИМЯ, Н_ВЕДОМОСТИ.ЧЛВК_ИД, Н_СЕССИЯ.ЧЛВК_ИД FROM Н_ЛЮДИ
LEFT JOIN Н_ВЕДОМОСТИ ON Н_ВЕДОМОСТИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
LEFT JOIN Н_СЕССИЯ ON Н_СЕССИЯ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
WHERE Н_ЛЮДИ.ИД = 100012
AND Н_ВЕДОМОСТИ.ЧЛВК_ИД = 105590
AND Н_СЕССИЯ.ЧЛВК_ИД < 100622;
