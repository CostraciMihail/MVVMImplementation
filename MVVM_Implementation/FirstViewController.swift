//
//  FirstViewController.swift
//  MVVM_Implementation
//
//  Created by winify on 3/31/17.
//  Copyright © 2017 Winify-AG.MMWawiSDKConnectorExplorer. All rights reserved.
//

import UIKit
import ImoTableView

class FirstViewController: BaseViewController {
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    var firstVM: FirstViewModel?
    var firstModel: FirstModel?
    var presentor: FlowPresentor?
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        
       super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.setUpTableView()
        
        self.firstModel = FirstModel("Home", type: "simple")
        self.firstVM = FirstViewModel(withModel: self.firstModel)
        self.presentor = FlowPresentor()
    }

    override func setUpTableView() {
        
        super.setUpTableView()
        
        let section = ImoTableViewSection()
        let source = DemoCellSource()
        source.height = 250
        
        section.add(source, target: self, #selector(self.cellPressed))
        //section.headerView = UIView(frame: CGRect(x: 0, y: 0, width: (tableView?.bounds.size.width)!, height: 50))
        //section.headerView?.backgroundColor = UIColor.yellow
        tableView?.add(section: section)
        tableView?.update()
    }
    
    @IBAction func firstButtonPressed(_ sender: Any) {
 
        if let presentor = self.presentor {
            presentor.goToSecondViewController(fromViewController: self)
        }
    }
    
    func cellPressed() {
        
        print("Cell pressed")
    }

}
