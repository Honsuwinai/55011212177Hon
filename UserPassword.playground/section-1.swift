// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class User {

    
    var userpasswd: [String: String] = ["KnightSaber":"17593  ","EsPhoenix":"2536  ","StingRay":"hon123  ","Nemisis":"suwinai  "]
    
    
func check(){
        if userpasswd.isEmpty {
            println(" Userpasswd dictionary is empty")
        }else {
            println(" Userpasswd dictionary is not empty")
        }
    }


    func add(name:String, password:String){
        userpasswd[name] = password
    
    }


    func count(){
        println("local \(userpasswd.count) item")
    }



    func del(name:String){
        userpasswd[name] = nil
    }
    
    
    func edit(name:String,passwd:String){
        userpasswd[name] = passwd
    }
    
    
}


let ad = User()
ad.add("sss", password: "ssss")


