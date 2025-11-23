1. Запуск или включение службы auditd

Перед работой проверяем, что служба запущена. Если не запущена — включаем её.

sudo systemctl start auditd
sudo systemctl enable auditd
![Скриншот](https://github.com/rasul443/linux-log-analysis-hardening/blob/main/photo_2025-11-22_10-58-31.jpg)


Первая команда запускает службу, вторая включает автозапуск.

2. Проверка статуса

Смотрим, работает ли служба и какие правила сейчас активны.

sudo systemctl status auditd
sudo auditctl -l
![Скриншот 2](https://github.com/rasul443/linux-log-analysis-hardening/blob/main/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%20%D0%BE%D1%82%202025-11-22%2016-18-19.png)


Первая команда показывает состояние службы, вторая выводит текущие активные правила.

3. Перезапуск службы

Если нужно обновить или применить правила, перезапускаем службу auditd:

sudo systemctl restart auditd

4. Создание события

Делаем действие, которое обязательно появится в логе. Просто открываем файл /etc/passwd:

sudo nano /etc/passwd

![Скриншот 3](https://github.com/rasul443/linux-log-analysis-hardening/blob/main/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202025-11-23%20033326.png)


Даже если ничего не меняешь, открытие файла уже создаёт запись.

5. Просмотр логов по ключу

Ищем лог-записи с тегом passwd_changes:

sudo ausearch -k passwd_changes

![Скриншот 4](https://github.com/rasul443/linux-log-analysis-hardening/blob/main/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202025-11-23%20033648.png)


6. Полный лог auditd

Если нужно вывести весь журнал:

sudo cat /var/log/audit/audit.log
