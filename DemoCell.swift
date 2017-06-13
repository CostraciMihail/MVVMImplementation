//
//  DemoCell.swift
//  ImoTableViewTemplates
//
//  Created by Borinschi Ivan on 12/5/16.
//  Copyright © 2016 Imodeveloperlab. All rights reserved.
//

import ImoTableView
import UIKit

open class DemoCell: ImoTableViewCell {
    
    
    open override func setUpWithSource(source: AnyObject) {
        if let source = source as? DemoCellSource {
            //TODO: Do your work here
            print(source)
            self.transformView()
        }
    }
    
    func transformView() {
        
        var tr = self.transform
        
        print("tr.a= \(tr.a)")
        print("tr.b= \(tr.b)")
        print("tr.c= \(tr.c)")
        print("tr.tx= \(tr.tx)")
        print("tr.ty= \(tr.ty)")
        
        
//        tr.a = 1
//        tr.b = 0
//        tr.c = 0
//        tr.tx = 0
//        tr.ty = 0
        
        self.transform = tr
    }
    
    override open func layoutIfNeeded() {
        
        
    }
}
