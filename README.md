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

## **ДЗ № 6 Практика IaC с использованием Terraform**
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

## **ДЗ № 7 Принципы организации инфраструктурного кода и работа над инфраструктурой в команде на примере Terraform.**
### В ходе задания выполнено:
1. Установил количество инстансов равным 1.
2. Решил, что нет необходимости в балансёре, убрал.
3. Описал создание виртуальной сети в main.tf файле.
4. Создал два json шаблона packer для создания образов машин с базой и приложением.
5. Разнёс конфигурации по tf файлам.
6. Добавил OUTPUT переменные на основе созданной сети.
7. Создание модулей для развёртывания базы и приложения.
8. Подключение модулей к основному main.tf файлу.
9. Создание двух веток stage и prod.
10. Добавление tf файла для создание bucketа для хранения state файла и создание backend.tf.
11. Вынос фалов без state файла и проверка работы.
12. Добавление провижинеров для полноценного развёртывания приложения и настройки порта и адреса прослушивания базы.

## **ДЗ № 8 Управление конфигурацией. Знакомство с Ansible**
1. Создание ветки ansible-1
2. Установка python 2.7 и pip
3. С помощью pip произведена установка ansible версии >=2.4
4. Создание inventory файла с указанием параметров подключения по ssh
5. Исследование работы модуля ping по командам ansible на dbsever и appserver
6. Создание config файла для ansible, что облегдчает написание inventory файла
7. Исследована работа ansible с группами хостов
8. Написание inventory.yaml(тот же inventory, только в yaml формате)
9. Произведено клонирование git репозиторий reddit на машину appserver с помощью ansible и проверка выходных параметров при попытке повторного клонирования
10. Написание первого playbook по клонированию репозитория
11. В задании со * необходимо создать динамический инвентори, поэтому изучаем ,выхлоп yc compute instance list и подмечаем вывод в виде таблицы, значит для парса будем использовать awk. После длительных мучений и гуглений получилось собрать файл invenory стандартного формата, вот именно из него создадим при помощи ansible-inventory json файл. Далее просто перепишем ansible.cfg на json инвентори.

## **ДЗ № 9 Деплой и управление конфигурацией с Ansible**
1. Создание ветки ansible-2
2. Подготовка кода инфры и изучение работы плейбуков
3. Написание первых сценариев для db сервера
4. Рассмотрение работы параметров запуска ansible-playbook
5. Рассмотрение описания блока переменных
6. Рассмотрение описания и работы блока "handlers"
7. Настройка инстанса с приложением
8. Деплой приложений относительно тасков по тэгам
9. Создание файла с двумя сценариями по тэгам и деплой на новые инстансы
10. Дробление плейбука на несколько, в этом случае тэги не использовались
11. Именение провижининга для Packer(написание плейбуков для деплоя приложений вместо bash скриптов)
12. Проверка создания образов

## **ДЗ № 10 Ansible: работа с ролями и окружениями**
1. Создание ветки ansible-3
2. Изучение команд ansible-galaxy
3. Создание ролей с помощью ansible-galaxy
4. Перенос кода из плэйбуков в роли
5. Создаём разделение на окружения с описанием во время выполнения ролей и заданием группорвых переменных
6. Подтягиваем из ansible-galaxy роль jdauphant при помощи requirements.yml
7. Применяем роль в общем плейбуке site.yml и проверяем доступность приложения по 80-му порту
8. Изучаем работу Ansible Vault и шифруем файлы credentials.yml при помощи VAULT KEY
