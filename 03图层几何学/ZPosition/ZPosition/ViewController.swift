//
//  ViewController.swift
//  ZPosition
//
//  Created by 王祖康 on 16/2/4.
//  Copyright © 2016年 com.Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var redView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.greenView.layer.zPosition = 1.0
    }
}

