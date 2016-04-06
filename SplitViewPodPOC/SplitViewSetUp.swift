//
//  SplitViewSetUp.swift
//  SplitViewPodPOC
//
//  Created by Mette Broegaard on 06/04/16.
//  Copyright © 2016 Inserve Technology AB. All rights reserved.
//

import Foundation
import UIKit

class SplitViewSetUp {
    
    func setUpDelegates() {
        //lazy var lunchMenuViewController: LunchMenuViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("lunchMenuPViewController") as! LunchMenuViewController
        let splitView = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! UISplitViewController
        let leftNavController = splitView.viewControllers.first as! UINavigationController
        let masterViewController = leftNavController.topViewController as! MasterViewController
        masterViewController.splitView = splitView
        
        splitView.preferredPrimaryColumnWidthFraction = CGFloat(0.1)
        splitView.preferredDisplayMode = .AllVisible
    }
}