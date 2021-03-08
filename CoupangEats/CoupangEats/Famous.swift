//
//  Famous.swift
//  CoupangEats
//
//  Created by 김태훈 on 2020/11/28.
//

import UIKit

class Famous {
    var name: String
    var point: String
    var kilo: String
    var couponeKind: String
    var image: UIImage? {
        return UIImage(named: "\(name).png")
    }
    var coupone: UIImage? {
        return UIImage(named: "\(couponeKind).png")
    }
    
    init(name: String, point: String, kilo: String, couponeKind: String) {
        self.name = name
        self.point = point
        self.kilo = kilo
        self.couponeKind = couponeKind
    }
}
