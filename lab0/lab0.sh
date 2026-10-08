#!/bin/bash

mkdir victor experiments archive_empty
cd victor/
mkdir kitchen hall office
cd kitchen/
mkdir molecular_station hot_station
cd ../..

echo "Катя готовит свекольную пену для нового блюда
Лёва проверяет температуру перед подачей
Баринов требует сохранить вкус продуктов
Рецепт отправят на вечернюю дегустацию" > victor/kitchen/molecular_station/foam_recipe

echo "Баллон с азотом доставлен утром
Катя проверила защитные перчатки
Сеня держится подальше от оборудования
После опыта рабочее место нужно убрать" > victor/kitchen/molecular_station/nitrogen_notes

echo "Сеня подготовил мясо для горячего блюда
Первая партия отправлена в зал
Шеф потребовал переделать соус
К вечеру заказ был выполнен" > victor/kitchen/hot_station/senya_report

echo "Федя получил свежую рыбу
Дорадо подготовлена для постоянных гостей
Катя предложила необычную подачу блюда
Баринов одобрил только второй вариант" > victor/kitchen/hot_station/fedya_report

echo "Баринов проводит дегустацию после обеда
Каждый повар представляет одно новое блюдо
Катя отвечает за молекулярную часть меню
Результаты передать Лёве до вечерней смены" > victor/kitchen/chef_order

echo "Столик два забронирован для критика
Столик пять подготовить к семнадцати часам
Большой стол оставить для команды ресторана
Вика проверит готовность зала перед открытием" > victor/hall/reservations

echo "Гости похвалили необычную подачу блюда
Один гость попросил вернуть обычный десерт
Критик отметил точность работы Кати
Новое меню вызвало интерес у посетителей" > victor/hall/guest_reviews

echo "Катя приходит на кухню к десяти часам
До обеда проводится первый опыт
После дегустации нужно встретиться с Бариновым
Вечером Катя помогает Лёве закрыть смену" > victor/office/katya_schedule

echo "Свекольная пена получила высокую оценку
Рыбное блюдо нужно подать горячее
Сеня предложил изменить мясной соус
Катя подготовит итоговый рецепт вечером" > experiments/tasting_results

echo "Ресторан Victor открывается в полдень
Вика встречает первых гостей
Баринов лично проверяет новое меню
Команда собирается на кухне до открытия" > opening_message

sudo chmod 755 victor
sudo chmod u=rwx,g=rx,o=--- victor/kitchen

sudo chmod 750 victor/kitchen/molecular_station
sudo chmod u=rw,g=r,o=--- victor/kitchen/molecular_station/foam_recipe
sudo chmod 640 victor/kitchen/molecular_station/nitrogen_notes

sudo chmod u=rwx,g=rx,o=--- victor/kitchen/hot_station
sudo chmod 644 victor/kitchen/hot_station/senya_report
sudo chmod u=rw,g=r,o=r victor/kitchen/hot_station/fedya_report

sudo chmod 640 victor/kitchen/chef_order
sudo chmod u=rwx,g=rx,o=rx victor/hall
sudo chmod 664 victor/hall/reservations
sudo chmod u=r,g=r,o=r victor/hall/guest_reviews

sudo chmod 750 victor/office
sudo chmod u=rw,g=r,o=--- victor/office/katya_schedule

sudo chmod u=rwx,g=rx,o=--- experiments
sudo chmod 600 experiments/tasting_results
sudo chmod 700 archive_empty

sudo chmod u=rw,g=r,o=r opening_message

