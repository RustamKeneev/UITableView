//
//  GeneralTableViewCell.swift
//  UITableView
//
//  Created by Rustam Keneev on 4/30/21.
//

import UIKit

class GeneralTableViewCell: UITableViewCell {
    
    private lazy var generalImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "general_settings")
        return view
    }()
    
    private lazy var generalLabel: UILabel = {
        let view = UILabel()
        view.text = "General"
        view.font = UIFont.systemFont(ofSize: 14)
        view.tintColor = .black
        return view
    }()
    
    private lazy var arrowImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "arrow_right")
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(generalImage)
        generalImage.snp.makeConstraints{(make) in
            make.left.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(10)
            make.height.width.equalTo(40)
        }
        
        contentView.addSubview(generalLabel)
        generalLabel.snp.makeConstraints{(make) in
            make.left.equalTo(generalImage.snp.right).offset(10)
            make.bottom.equalTo(generalImage.snp.bottom)
            make.top.equalTo(generalImage.snp.top)
        }
        
        contentView.addSubview(arrowImage)
        arrowImage.snp.makeConstraints{(make) in
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(-25)
//            make.top.equalToSuperview()
//            make.top.equalToSuperview().offset(10)
//            make.bottom.equalTo(generalLabel.snp.bottom)
//            make.top.equalTo(generalLabel.snp.top)
            make.height.width.equalTo(10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
