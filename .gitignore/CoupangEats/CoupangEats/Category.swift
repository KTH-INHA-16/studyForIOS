//
//  Category.swift
//  CoupangEats
//
//  Created by κΉνν on 2020/11/28.
//

import UIKit

class Category {
    var name: String
    var image: UIImage? {
        return UIImage(named: "\(name).png")
    }
    
    init(name: String){
        self.name = name
    }

}
