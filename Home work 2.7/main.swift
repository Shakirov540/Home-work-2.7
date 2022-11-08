//
//  main.swift
//  Home work 2.7
//
//  Created by Айбек Шакиров on 5/11/22.
//

import Foundation

/*Домашнее задание №7. Расширения и обобщения.

Создать extension для класса Array c функцией, которая находит квадрат для всех чисел массива любого типа (целых и не целых)

Создать структуру SearchItem типа generic, которая имеет один параметр массив типа generic. Написать функцию, которая делает поиск введенных данных внутри массива. Если находит, принт что элемент найден, иначе не найден. Создать объекты в main, заполнить массив, попробовать ввести данные для поиска несколько раз с разными типами.

*/

//nomer1
extension Array where Element:Numeric{
    func squaree(array:Array){
        for item in array{
            print(item*item)
        }
                  }}
var arrayy = [2,4,6,8,9]
arrayy.squaree(array: arrayy)

//2
struct SearchItem<T:Equatable>{
    var array1:[T]
    func searchValue(item:T){
        if array1.contains(item){
            print("Элемент найден")
        }else{
            print("Элемент не найден")
        }
    }}
    
var array2 = SearchItem(array1: [2,3,4,5,7,8])
array2.searchValue(item: 8)
var array3 = SearchItem(array1: ["апельсин","молоко","хлеб"])
array3.searchValue(item: "ь")

