//
//  ViewController.swift
//  AlertControllerSwift
//
//  Created by MW 04 on 6/23/17.
//  Copyright © 2017 com.swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAlertControllerAction(_ sender: Any) {
        
        let actionSheet = UIAlertController.init(title: nil, message: nil, preferredStyle: .actionSheet)
        
        if let subview = actionSheet.view.subviews.first, let actionSheet = subview.subviews.first {
            for innerView in actionSheet.subviews {
                innerView.backgroundColor = UIColor(hex: "0D324E")
                innerView.layer.cornerRadius = 15.0
                innerView.clipsToBounds = true
            }
        }
        
        actionSheet.addAction(UIAlertAction.init(title: "Take Photo", style: UIAlertActionStyle.default, handler: { (action) in
            
        }))
        actionSheet.addAction(UIAlertAction.init(title: "Choose Photo", style: UIAlertActionStyle.default, handler: { (action) in
            
        }))
        actionSheet.addAction(UIAlertAction.init(title: "Cancel", style: UIAlertActionStyle.cancel, handler: { (action) in
        }))
        
        actionSheet.view.tintColor = .orange
        
        self.present(actionSheet, animated: true, completion: nil)
    }
}

extension UIColor {
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
}

