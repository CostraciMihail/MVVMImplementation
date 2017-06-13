//
//  BaseViewController.swift
//  MVVM_Implementation
//
//  Created by winify on 4/6/17.
//  Copyright © 2017 Winify-AG.MMWawiSDKConnectorExplorer. All rights reserved.
//

import UIKit
import ImoTableView

class BaseViewController: UIViewController {

    var tableView: ImoTableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func setUpTableView() {
        
        let navBarheigt = self.navigationController?.navigationBar.frame.size.height
        
        print(String(describing: type(of: navBarheigt)))
        
        guard (navBarheigt != nil) else { return }
        
        self.tableView = ImoTableView(on: self.view, insets: UIEdgeInsetsMake(navBarheigt! + 20, 0, 0, 0))
        self.tableView?.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0)
        
        guard let tableView = self.tableView else { return }
        self.view.addSubview(tableView)
        
    }


}
