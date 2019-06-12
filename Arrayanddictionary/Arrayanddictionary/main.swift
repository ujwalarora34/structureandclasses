//
//  main.swift
//  Arrayanddictionary
//
//  Created by MacStudent on 2019-06-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var a = [10,20,30,40,50,60,70,80,90,100]

//print(a[1])
//print(a[10])

for x in a
{
    print(x)
}

a.append(110)
a.append(120)
//a[10] = 110 //invalid

print(a[10])

print("-----------")
print(a.capacity)
print(a.count)

if a.isEmpty
{
    print("Array is empty")
} else{
    print("Array contains some elements")
}

var x = Int()
print(x)

let othercountries = ["Pak","Russia","UK"]
var country:[String]!

country = [String]()

//country += othercountries
//country +=["Pak","Russia","UK"]
country = country + ["Pak", "Russia", "UK"]



if var c = country
{
    country.append("India")
    country.append("Canada")
    country.append("Usa")
    print("No. of Countries : \(c.count)")
}

print("No. of Countries : \(country?.count)")


//recursion example
func printN(n: Int)
{
    if(n == 0)
    {
        return
    }
    else
    {
        printN(n: n - 1)
        print(n)
        
    }
}

print("**********************")
printN(n: 10)

func sumN(n: Int) -> Int
{
    if(n == 0)
    {
        return 0
    }
    else
    {
        return n + sumN(n: n-1)
    }
    
}

print("SUM : \(sumN(n: 5))")

print ( "******** Array in Reverse order *******")
func printthereversearray(arr: [String], index: Int)
{
    if arr.isEmpty{
        return
    }
    else
    {
        if index == -1
        {
            return
        }
        else
        {
            print(arr[index])
            printthereversearray(arr: arr, index : index - 1)
        }
    }
}

printthereversearray(arr: country, index: country.count - 1)

//printthereversearray(arr: country, index: country.count - 1)
