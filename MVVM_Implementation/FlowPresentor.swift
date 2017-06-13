//
//  FlowPresentor.swift
//  MVVM_Implementation
//
//  Created by winify on 4/3/17.
//  Copyright © 2017 Winify-AG.MMWawiSDKConnectorExplorer. All rights reserved.
//

import Foundation
import UIKit

class FlowPresentor: UIViewController {

    func goToSecondViewController(fromViewController: UIViewController) {
        
        let secondVC = SecondViewController(nibName: "SecondViewController", bundle: nil) as SecondViewController?
        if let secondVC = secondVC {
            fromViewController.navigationController?.pushViewController(secondVC, animated: true)
        }
        
    }
    
    func goToThirdViewController(fromViewController: UIViewController) {
        
        let thirdVC = ThirdViewController(nibName: "ThirdViewController", bundle: nil) as ThirdViewController?
        if let thirdVC = thirdVC {
            fromViewController.navigationController?.pushViewController(thirdVC, animated: true)
        }

    }
}
