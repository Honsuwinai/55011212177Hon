// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Calculator {
    
    func sum(num1:Double,num2:Double)->Double{
        
        let sum = Double(num1+num2)
        
        return sum
    }
    
    
    func sub(num1:Double,num2:Double)->Double{
        
        let sum = Double(num1-num2)
        
        return sum
    }
    
    func mul(num1:Double,num2:Double)->Double{
        
        let sum = Double(num1*num2)
        
        return sum
    }
    
    
    func del(num1:Double,num2:Double)->Double{
        
        let sum = Double(num1/num2)
        
        return sum
    }
    
    func mod(num1:Double,num2:Double)->Double{
        
        let sum = Double(num1%num2)
        
        return sum
    }

    
    
}

let cal = Calculator()

cal.sum(5, num2: 1.5)
cal.sub(5, num2: 2.5)
cal.mul(0.5, num2: 10)
cal.del(1, num2: 0.5)
cal.mod(5, num2: 2)