//
//  ViewController.swift
//  HitTest
//
//  Created by 王祖康 on 16/2/4.
//  Copyright © 2016年 com.Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layerView: UIView!
    
    private var blueLayer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.blueLayer.frame = CGRectMake(50, 50, 100, 100)
        self.blueLayer.backgroundColor = UIColor.blueColor().CGColor
        
        self.layerView.layer.addSublayer(self.blueLayer)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //get touch position
        let point = touches.first?.locationInView(self.view)
        //get touch layer
        let layer = self.layerView.layer.hitTest(point!)
        //get layer using hitTest
        if layer == self.blueLayer {
            UIAlertView(title: "Inside Blue Layer", message: nil, delegate: nil, cancelButtonTitle: "OK").show()
        } else if layer == self.layerView.layer {
            UIAlertView(title: "Inside White Layer", message: nil, delegate: nil, cancelButtonTitle: "OK").show()
        }
    }
}

