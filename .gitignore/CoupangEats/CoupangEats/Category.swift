//
//  Category.swift
//  CoupangEats
//
//  Created by 김태훈 on 2020/11/28.
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
