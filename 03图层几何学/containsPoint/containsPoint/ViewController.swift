//
//  ViewController.swift
//  containsPoint
//
//  Created by 王祖康 on 16/2/4.
//  Copyright © 2016年 com.Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var layerView: UIView!
    
    private var blueLayer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.blueLayer.frame = CGRectMake(50.0, 50.0, 100.0, 100.0)
        self.blueLayer.backgroundColor = UIColor.blueColor().CGColor
        
        self.layerView.layer.addSublayer(self.blueLayer)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //get touch position relation to main view
        var point = touches.first?.locationInView(self.view)
        //convert point to the white layer's coordinates
        point = self.layerView.layer.convertPoint(point!, fromLayer: self.view.layer)
        //get layer using containsPoint method
        if self.layerView.layer.containsPoint(point!) {
            //convert point to blueLayer's coordinates
            point = self.blueLayer.convertPoint(point!, fromLayer: self.layerView.layer)
            if self.blueLayer.containsPoint(point!) {
               UIAlertView(title: "Inside Blue Layer", message: nil, delegate: nil, cancelButtonTitle: "OK").show()
            } else {
                UIAlertView(title: "Inside White Layer", message: nil, delegate: nil, cancelButtonTitle: "OK").show()
            }
        }
    }
}

