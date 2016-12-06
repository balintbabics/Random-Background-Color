//
//  ViewController.swift
//  randomBackgroundApp
//
//  Created by Balint Babics on 15/11/16.
//  Copyright © 2016 Balint Babics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var backgroundView: UIView!

    @IBAction func getRandomColor(_ sender: Any) {
        
        // backgroundView.backgroundColor = randomColor();
        // call randomMaterialColor() instead of MaterialColors.Blue.A100
        backgroundView.backgroundColor = UIColor.MaterialColors.Blue.A100;
    }
}

func randomColor() -> UIColor {
    
    let hue : CGFloat = CGFloat(arc4random() % 256) / 256
    let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.25
    let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.25
    return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
}

// TODO: func randomMaterialColor() -> UIColor { ... }
