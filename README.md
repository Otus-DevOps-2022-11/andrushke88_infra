# andrushke88_infra
andrushke88 Infra repository

# **ДЗ № 3**
## Необходимо забиндить подключение в конфигурационнике ssh(vi ~/.ssh/config)
Host someinternalhost
Hostname 10.128.0.15
User appuser
ProxyCommand ssh -W %h:%p -i ~/.ssh/appuser -A appuser@130.193.37.10
## Далее просто подключаемся через команду "ssh someinternalhost"
bastion_IP = 130.193.37.10
someinternalhost_IP = 10.128.0.15

# **ДЗ № 4 Деплой тестового приложения**
## ДАнные для проверки веб приложения

testapp_IP = 62.84.115.249
testapp_port = 9292

# **Дз № 5 Сборка образов VM при помощи Packer**
## В ходе задания выполнено:

1. Создание новой ветки packer-base
2. Перенос файлов пердыдущего задания в папку config-scripts
3. Выкачан последний packer и переложен в папку ~/.local/path
4. Создан сервисный аккаунт с делегирование прав и создание ключа доступа
5. Исследовано на практике создание образа ubuntu при помощи Packer
6. Выполнены задания со *, а именно создан packer сборщик сервера из предыдущего задания с созданием демона puma.service и создание скрипта развёртывания сервера из образа.

## **ДЗ № 6 Практика IaC с использованием Terraform***
### В ходе задания выполнено:

1. Создание новой ветки terraform-1 и каталога terraform
2. Скачан и добавлен в $PATH требуемый terraform v0.12.8
3. В папке terraform создан main.tf и описан провайдер требуемой версии с последующей инициализацией
4. Дополнен .gitignore
5. Добавлено описание провайдера и ресурса с распаковкой образа
6. Исследована работа развёртыванием терраформа и создан файл с выходными переменными
7. Добавление провижинеров
8. Добавление переменных для удобства изменений
9. Проведена финальная проверка
10. Выполнены самостоятельные задания
11. Исследовано и выполнено задание с 2x*
