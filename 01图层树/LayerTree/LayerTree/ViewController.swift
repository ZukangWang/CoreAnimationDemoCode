//
//  ViewController.swift
//  LayerTree
//
//  Created by 王祖康 on 16/2/1.
//  Copyright © 2016年 com.Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blueLayer = CALayer()
        blueLayer.frame = CGRectMake(50.0, 50.0, 100.0, 100.0)
        blueLayer.backgroundColor = UIColor.blueColor().CGColor
        
        self.layerView.layer.addSublayer(blueLayer)
    }
}

