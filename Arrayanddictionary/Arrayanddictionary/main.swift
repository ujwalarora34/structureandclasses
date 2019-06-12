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



if let c = country
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

//printthereversearray(arr: country.removeAll(), index: country.count - 1)

var countryDictionary = ["key" : "value" ,
                         "Ind" : "India",
                         "Cad" : "Canada",
                         "Usa" : "United States of America"
                        ]

print(countryDictionary)

print(countryDictionary["Usa"] ?? "key not exist")
print(countryDictionary["Usa"]!)

print(countryDictionary["Pak"] ?? "key not exist")

if let c = countryDictionary["Pak"]
{
    print(c)
}

for c in countryDictionary
{
    print(c)
    print(c.key, c.value)
}

countryDictionary["Pak"] = "Pakistan"
countryDictionary["Pak00"] = nil

print(countryDictionary)

for (k,v) in countryDictionary
{
    print(k,v)
}

var newC = Dictionary<String, Int>()

var newArray : Array<Int>

//declaring and suing Set collection

var mySet = Set<String>()

mySet.insert("India")
mySet.insert("Canada")
mySet.insert("Usa")

mySet.insert("India")

print(mySet)
mySet.insert("Russia")
print(mySet)

var mySet2 = Set<String>()

mySet2.insert("India")
mySet2.insert("Pakistan")
mySet2.insert("Nepal")

let interSet = mySet.intersection(mySet2)
print(interSet)

let unionSet = mySet.union(mySet2)
print(unionSet)

let isDisjoinSet = mySet.isDisjoint(with: mySet2)
print(isDisjoinSet)

let minusSet = mySet.subtracting(mySet2)
print(minusSet)

let symDiffSet = mySet.symmetricDifference(mySet2)
print(symDiffSet)

//let ss = [0: 100, 1: 200, 5:500]
//print(ss)

 var ss = Dictionary<String, Any>()

ss["int"] = 100
ss["string"] = "Hello World"
ss["dict"] = ["k": "v", "ko": 100]
ss["tuple"] = (100,200)

for item in ss
{
    if item.value is Int
    {
        print("I am Integer : \(item)")
    }
    
    if item.value is String
    {
        print("I am string : \(item)")
    }
    
    if item.value is Dictionary<String, Any>
    {
        print("I am dictionary : \(item)")
    }
    
    if item.value is (Int, Int)
    {
        print("I am tuple : \(item)")
    }
    
}

//print(ss)
