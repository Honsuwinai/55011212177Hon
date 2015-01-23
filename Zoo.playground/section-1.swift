// Playground - noun: a place where people can play

import UIKit


class Zoo {
    var animafood: [String: String] = ["Dog":"ขี้","Cat":"ปลา","Bird":"หนอน","Monkey":"กล้วย"]
    
    func eat(key2: String){
        for(key,value) in animafood {
            if(key==key2){
                println("\(key) กิน \(value)")
            break
            }
        }
    }
}

let AnimalEat = Zoo()
AnimalEat.eat("Dog")
