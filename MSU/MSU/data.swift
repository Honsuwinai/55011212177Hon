//
//  data.swift
//  MSU
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {

    func getdata() ->Array<Msu> {
        var tempArray = Array<Msu>()
        
        
        let b1 = Msu(bimage: UIImage(named: "Glock 19.jpg"), bname: "Glock 19");tempArray.append(b1)
        
        let b2 = Msu(bimage: UIImage(named: "Beretta 92FS.jpg"), bname: "Beretta 92FS");tempArray.append(b2)
        
        let b3 = Msu(bimage: UIImage(named: "Prices Climb.jpg"), bname: "Prices Climb");tempArray.append(b3)
        return tempArray
    }
}
