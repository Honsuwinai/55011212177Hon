// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Myinventory {
    
    var Item: [String: String]=["SniperM107":"5","SniperAW Magnum":"3","SniperSRG":"8","SniperSp66":"12","Vss":"10","SVD":"20"]
    
    
    func check()->String{
        var abc:String
        if(Item.isEmpty){
            abc = "Item inventory is empty"
        }else {
            abc = "Item inventory is not empty"
        }
        return abc
        
    }
    
    func additem(name:String, ea:String)->String {
        if (Item[name] != nil){
            return "Cannot add"
        }else {Item[name] != ea
            return "Add complate"
        }
    }
    
    
    func Updateitem(name:String, ea:String)->String{
        if (Item[name] != nil){
            Item[name] = ea
            return "Update Complete \(Item)"
        }else{
            return "Update Fail"
        }
    }
    
    
    func Del(name:String) {
        Item[name] = nil
    }
    

}

let buy = Myinventory ()
buy.Updateitem("SniperM107", ea: "10")