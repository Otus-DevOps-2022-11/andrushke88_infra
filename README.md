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
