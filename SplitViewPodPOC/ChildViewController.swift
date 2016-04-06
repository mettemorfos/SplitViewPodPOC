//
//  ChildViewController.swift
//  SplitViewPOC
//
//  Created by Mette Broegaard on 06/04/16.
//  Copyright © 2016 Inserve Technology AB. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension ChildViewController: ViewSelectionDelegate {
    func displayViewController(vc: UIViewController) {
        
        addChildViewController(vc)
    }
}
