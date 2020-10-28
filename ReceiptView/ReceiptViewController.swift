//
//  ReceiptViewController.swift
//  ReceiptView
//
//  Created by Soulchild on 29/10/2020.
//  Copyright © 2020 fluffy. All rights reserved.
//

import UIKit

class ReceiptViewController: UIViewController {

    @IBOutlet weak var receiptTopView: UIView!
    
    // this is the hard part, lol
    @IBOutlet weak var receiptCenterView: DividerView!
    
    @IBOutlet weak var receiptBottomView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // round top corners
        
    }
    
    
    override func viewDidLayoutSubviews() {
        receiptTopView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        receiptTopView.layer.cornerRadius = 15.0
        receiptTopView.layer.shadowColor = UIColor.darkGray.cgColor
        receiptTopView.layer.shadowOffset = CGSize(width: 5.0, height: 10.0)
        receiptTopView.layer.shadowRadius = 10.0
        receiptTopView.layer.shadowOpacity = 0.25

        
        receiptBottomView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        receiptBottomView.layer.cornerRadius = 15.0
        receiptBottomView.layer.shadowColor = UIColor.darkGray.cgColor
        receiptBottomView.layer.shadowOffset = CGSize(width: 5.0, height: 10.0)
        receiptBottomView.layer.shadowRadius = 10.0
        receiptBottomView.layer.shadowOpacity = 0.25
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
