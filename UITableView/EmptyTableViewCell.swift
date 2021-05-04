//
//  EmptyTableViewCell.swift
//  UITableView
//
//  Created by Rustam Keneev on 5/2/21.
//

import UIKit


class EmptyTableViewCell: UITableViewCell {
    
    private lazy var emptyCell: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(emptyCell)
        emptyCell.snp.makeConstraints{(make) in
            make.left.right.equalToSuperview()
            make.width.equalToSuperview()
            make.top.bottom.equalToSuperview()
            make.height.equalTo(30)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
