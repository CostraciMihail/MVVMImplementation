//
//  FirstViewModel.swift
//  MVVM_Implementation
//
//  Created by winify on 4/3/17.
//  Copyright © 2017 Winify-AG.MMWawiSDKConnectorExplorer. All rights reserved.
//

import UIKit

class FirstViewModel {

    var firstModel: FirstModel?
    
    var nameFirstModel: String?
    var typeFirstModel: String?
    
    
    init(withModel model: FirstModel?) {
    
        if let model = model {
            
            self.nameFirstModel = model.name
            self.typeFirstModel = model.type
        }
    }
    
    
    
    
}
