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
        
        //let image = UIImage(named: "snowman")
        
        //self.layerView.layer.contents = image?.CGImage
        
        //self.layerView.layer.contentsGravity = kCAGravityCenter
        
        //set the contentsScale to match image
        //self.layerView.layer.contentsScale = (image?.scale)!
        
        //set masksToBounds to rebulid layer content
        //self.layerView.layer.masksToBounds = true
        
        //选择右上角四分之一为内容
        //self.layerView.layer.contentsRect = CGRectMake(0.5, 0, 0.5, 0.5)
        
        //拉伸
        //self.layerView.layer.contentsGravity = kCAGravityResize
        
        //左下角四分之一拉伸
        //self.layerView.layer.contentsCenter = CGRectMake(0, 0.5, 0.5, 0.5)
        
        // 创建子layer
        let blueLayer = CALayer()
        blueLayer.frame = CGRectMake(50.0, 50.0, 100.0, 100.0)
        blueLayer.backgroundColor = UIColor.blueColor().CGColor
        
        //设置layer的delegate
        blueLayer.delegate = self
        
        //确保layer的寄宿图使用正确的scale
        blueLayer.contentsScale = UIScreen.mainScreen().scale
        
        self.layerView.layer.addSublayer(blueLayer)
        
        //强制layer重绘
        blueLayer.display()
        
    }
    
    override func drawLayer(layer: CALayer, inContext ctx: CGContext) {
        
        CGContextSetLineWidth(ctx, 10.0)
        
        CGContextSetStrokeColorWithColor(ctx, UIColor.redColor().CGColor)
        
        CGContextStrokeEllipseInRect(ctx, layer.bounds)
    }
}

