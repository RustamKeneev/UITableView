//
//  ViewController.swift
//  UITableView
//
//  Created by Rustam Keneev on 4/10/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController,UITabBarDelegate,UITableViewDataSource, UITableViewDelegate {
  
    
    var string = ["1","2"]
  
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = UIColor.clear
        tableView.separatorStyle = .singleLine
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
        return string.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = SignInTableViewCell()
//        cell.textLabel?.text = string[indexPath.row]
        return cell
    }
    

}

