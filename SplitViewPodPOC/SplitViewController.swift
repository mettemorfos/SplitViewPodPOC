//
//  SplitViewController.swift
//  SplitViewPOC
//
//  Created by Mette Broegaard on 06/04/16.
//  Copyright © 2016 Inserve Technology AB. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController {
    //override var preferredPrimaryColumnWidthFraction: CGFloat = CGFloat(1)
    //var children = [UIViewController]()
    
    override func viewWillAppear(animated: Bool) {
        //preferredPrimaryColumnWidthFraction = CGFloat(0.1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //preferredPrimaryColumnWidthFraction = CGFloat(0.1)
        //preferredDisplayMode = .AllVisible
        //presentsWithGesture = false
        //children = [RedViewController(), GreenViewController(), BlueViewController()]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//extension SplitViewController: ViewSelectionDelegate {
//    func displayViewForIndex(index: Int) {
//        //lalala
//        showDetailViewController(children[index], sender: self)
//    }
//}
