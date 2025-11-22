# Linux Log Analysis + Hardening

## 1. Включение auditd
Команда:
sudo systemctl start auditd
sudo systemctl enable auditd

## 2. Проверка статуса
sudo systemctl status auditd
sudo auditctl -s

## 3. Добавление правила
sudo auditctl -w /etc/passwd -p wa -k passwd_changes

## 4. Создание события
sudo nano /etc/passwd

## 5. Просмотр логов
sudo ausearch -k passwd_changes

## Примеры логов находятся в папке /logs
