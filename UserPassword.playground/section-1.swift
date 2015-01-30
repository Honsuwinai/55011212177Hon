// Playground - noun: a place where people can play

import UIKit


class User {
    
    
    var userpasswd: [String: String] = ["KnightSaber":"17593  ","EsPhoenix":"2536  ","StingRay":"hon123  ","Nemisis":"suwinai  "]
    
    
    func check()->String{
        var str:String
        if userpasswd.isEmpty {
            str = " Userpasswd dictionary is empty"
        }else {
            str = " Userpasswd dictionary is not empty"
        }
        return str
    }
    
    
    func add(name:String, password:String)->String{
        if(userpasswd[name] != nil){
            return "cannot add"
        }else {userpasswd[name] = password
            return "add complate"
        }
    }
    
    
    func count(){
        println("local \(userpasswd.count) item")
    }
    
    
    
    func del(name:String){
        userpasswd[name] = nil
    }
    
    
    func edit(name:String, passwd:String)->String{
        if(userpasswd[name] != nil){
            userpasswd[name] = passwd
            return "edit complate \(userpasswd)"
    }else {
            return "cannot edit \(userpasswd)"
        }
    }
}
let ad = User()
ad.check()
ad.add("GGG", password: "125")