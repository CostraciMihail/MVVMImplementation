//
//  SecondViewController.swift
//  MVVM_Implementation
//
//  Created by winify on 4/3/17.
//  Copyright © 2017 Winify-AG.MMWawiSDKConnectorExplorer. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {

    var secondVM: SecondViewModel?
    var secondModel: SecondModel?
    var presentor: FlowPresentor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.presentor = FlowPresentor()
        
        
    }

// MARK: ACTIONS
    @IBAction func nextButtonPressed(_ sender: Any) {
        
        if let presentor = self.presentor {
            presentor.goToThirdViewController(fromViewController: self)
        }
    }
    
}
