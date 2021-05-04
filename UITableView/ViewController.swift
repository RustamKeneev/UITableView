//
//  ViewController.swift
//  UITableView
//
//  Created by Rustam Keneev on 4/10/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController,UITabBarDelegate,UITableViewDataSource, UITableViewDelegate {
  
    
    var data = [TableViewModel(model: 0),
                TableViewModel(model: 1),
                TableViewModel(model: 2),
                TableViewModel(model: 3),
                TableViewModel(model: 4)]
  
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = UIColor.clear
//        tableView.separatorStyle = .singleLine
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView(frame: .zero)
        return tableView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.snp.makeConstraints{ (make) in
            make.left.right.bottom.top.equalToSuperview()
        }
     
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = data[indexPath.row]
        
        if item.model == 0 {
            let cell = EmptyTableViewCell()
            return cell
        }
        else if item.model == 1 {
            let cell = SignInTableViewCell()
            return cell
        }else if item.model == 2 {
            let cell = EmptyTableViewCell()
            return cell
        }else if item.model == 3 {
            let cell = EmptyTableViewCell()
            return cell
        }else if item.model == 4 {
            let cell = GeneralTableViewCell()
            return cell
        }else {
            let cell = SignInTableViewCell()
            return cell
        }
        
    }
    

}

