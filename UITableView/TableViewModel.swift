//
//  TableViewModel.swift
//  UITableView
//
//  Created by Rustam Keneev on 5/1/21.
//

import UIKit

class TableViewModel{
    var image: Int? = nil
    var imageArrow: Int? = nil
    var textOne: String? = nil
    var textTwo: String? = nil

    var model: Int? = nil

    
    init(image:Int,textOne:String?,textTwo:String?) {
        self.image = image
        self.textOne = textOne
        self.textTwo = textTwo
    }
    
    init(model: Int) {
        self.model = model
    }
    
    init() {
        
    }
    
    init(image:Int,textOne:String?,imageArrow:Int?) {
        self.image = image
        self.textOne = textOne
        self.imageArrow = imageArrow
    }
}
