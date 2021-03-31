# Лабораторная работа 2
 
## Вариант 6
`a * b + a ^ 3`

## Цель работы
Получить навыки описания арифметических блоков на RTL-уровне с использованием языка описания аппаратуры Verilog HDL

## Область допустимых значений

`y = a` `a ∈ (-∞ ; +∞)`

`y = b` `b ∈ (-∞ ; +∞)`

`⇒`

`y = a * b` `a ∈ (-∞ ; +∞)` `b ∈ (-∞ ; +∞)`

`y = a ^ 3` `a ∈ (-∞ ; +∞)`


## Схема

![комбинационная схема БОЭ](https://github.com/salvoronis/FFBD_lab2/blob/master/img/schema.png)

## Исходный код разработанного тестового окружения

gunTest.v

## Исходный код разработанного модуля БОЭ

gun.v

## Временная диаграмма

![Временная диаграмма](https://github.com/salvoronis/FFBD_lab2/blob/master/img/graph.png)

## Расход ресурсов на fpga

![Временная диаграмма](https://github.com/salvoronis/FFBD_lab2/blob/master/img/util.png)

## Заключение
В ходе лабораторной работы мы поняли, что у нас самый лёгкий вариант из всех и нас это порадовало. Поняли, что прям сходу мы всё равно задачу не решим и это нас расстроило.
Описали арифметический блок и он работает (точно). В этот раз было проще, потому что интерфейс верилога был уже знаком.
