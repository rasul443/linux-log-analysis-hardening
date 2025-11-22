# Linux Log Analysis + Hardening

## 1. Включение auditd
Команда:
sudo systemctl start auditd
sudo systemctl enable auditd

## 2. Проверка статуса
sudo systemctl status auditd
sudo auditctl -s

![Schrenschost](https://github.com/rasul443/linux-log-analysis-hardening/blob/main/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%20%D0%BE%D1%82%202025-11-22%2016-44-56.png)

## 3. Добавление правила
sudo auditctl -w /etc/passwd -p wa -k passwd_changes

## 4. Создание события
sudo nano /etc/passwd

## 5. Просмотр логов
sudo ausearch -k passwd_changes

## Примеры логов находятся в папке /logs
