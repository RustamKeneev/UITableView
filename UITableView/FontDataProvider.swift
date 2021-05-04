//
//  FontDataProvider.swift
//  UITableView
//
//  Created by Rustam Keneev on 4/10/21.
//

import UIKit

class FontDataProvider {
    
    static var fonts: [FontModel] = {
        let fonts = UIFont.familyNames
        return fonts.map { name in
            return FontModel(name:name, isFavorite: false)
        }
    }()
}
