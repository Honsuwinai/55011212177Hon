// Playground - noun: a place where people can play

import UIKit


let tutorialTeam = 56
let editoriallTeam = 23
var totallTeam = tutorialTeam + editoriallTeam
println("\(totallTeam)")

totallTeam += 1
let priceIntInferred = -19
let priceIntExplicit: Int = -19

let priceInfered = -19.99
let priceExplicit:Double = -19.99

let priceFloatInfered = -19.99
let priceFloatExplicit:Float = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"



var shoppingListExplicit = [String]()
shoppingListExplicit = ["Egg","Milk"]
// var shoppingListExplicit: [String] = ["Egg","Milk"]

var shoppinglist = ["Egg","Milk"]
println("The shopping list contains \(shoppinglist.count) items.")

shoppinglist.append("Flour")
shoppinglist += ["Bakeing Powder"]
shoppinglist += ["Chocolate Spread","Cheese","Butter"]
var firstItem = shoppinglist[0]
shoppinglist[0] = "Six egg"
//shoppinglist[0...3] = ["Banannas",Apples]
shoppinglist




if (onSaleInferred) {
    println("\(nameInferred) on sale for \(priceInfered)!")
} else {
    println("\(nameInferred) at regular price: \(priceInfered)!")
}

let possibleTipsInferred = [0.15,0.18,0.20]
let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]
var numberOfItem = possibleTipsInferred.count


var array1 = ["abc","bcb","cdf"]
for(var i = 0; i < array1.count; i++){
    println(array1[i])
}

var array2 = ["a","b","c"]
var str = ""
for str in array2 {
    println(str)
}













