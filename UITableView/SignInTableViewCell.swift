//
//  SignInTableViewCell.swift
//  UITableView
//
//  Created by Rustam Keneev on 4/30/21.
//

import UIKit

class SignInTableViewCell: UITableViewCell {
    
    private lazy var accountImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "user")
        return view
    }()
    
    private lazy var signInToLabel: UILabel = {
        let view = UILabel()
        view.text = "Sign in to your iPhone"
        view.textColor = .blue
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()
    
    private lazy var setupIcloudLabel: UILabel = {
        let view = UILabel()
        view.text = "Set up iCloud, the App Store, and more."
        view.textColor = .gray
        view.font = UIFont.systemFont(ofSize: 14)

        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(accountImage)
        accountImage.snp.makeConstraints{(make) in
            make.left.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(10)
            make.height.width.equalTo(40)
        }
        
        contentView.addSubview(signInToLabel)
        signInToLabel.snp.makeConstraints{(make) in
            make.left.equalTo(accountImage.snp.right).offset(10)
            make.top.equalTo(accountImage.snp.top)
            make.right.equalToSuperview().offset(-10)
        }
        
        contentView.addSubview(setupIcloudLabel)
        setupIcloudLabel.snp.makeConstraints{(make) in
            make.bottom.equalTo(accountImage.snp.bottom)
            make.left.equalTo(signInToLabel)
            make.right.equalToSuperview().offset(-10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
