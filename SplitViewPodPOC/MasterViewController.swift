//
//  MasterViewController.swift
//  SplitViewPOC
//
//  Created by Mette Broegaard on 06/04/16.
//  Copyright © 2016 Inserve Technology AB. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    var splitView: UISplitViewController?
    
    var delegate: ViewSelectionDelegate?
    
    var children = [UIViewController]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        children = [RedViewController(), GreenViewController(), BlueViewController()]
        
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

extension MasterViewController: UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
        switch indexPath.row {
        case 0:
            cell.backgroundColor = UIColor.redColor()
        case 1:
            cell.backgroundColor = UIColor.greenColor()
        case 2:
            cell.backgroundColor = UIColor.blueColor()
        default:
            cell.backgroundColor = UIColor.blueColor()
        }
        
        // Configure the cell
        return cell
    }
}

extension MasterViewController: UICollectionViewDelegate {
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row)
        
        var index = 2
        
        if (indexPath.row < 2) {
            index = indexPath.row
        }
        
        splitView?.showDetailViewController(children[index], sender: self)
        //delegate?.displayViewController(children[indexPath.row])
    }
    
}

extension MasterViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let size = self.view.frame.size.width
        let adjustedSize = size - 10
        return CGSizeMake(adjustedSize, adjustedSize)
    }
    
}

protocol ViewSelectionDelegate {
    func displayViewController(vc: UIViewController) 
}
