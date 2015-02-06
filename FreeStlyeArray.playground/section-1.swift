// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class assault{
    var Gun :[String] = ["SkarNight","M4","IMI-Tar","Sig"]
    var ea  :[String] = ["20","50","30","5"]
    
    var it : String
    
    init(request : String){
        self.it = request
    }
    
    func Search()->String{
        var item:String = ""
        for(var i=0 ; i < Gun.count ; i++){
            if(Gun[i]==it){
                item = ea[i]
            }
        }
        return it+" มีจำนวนกระบอก "+item+"ea"
    }
   
  
}
let Drop = assault(request: "M4")
Drop.Search()
