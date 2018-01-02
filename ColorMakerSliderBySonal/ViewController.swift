//
//  ViewController.swift
//  ColorMakerSliderBySonal
//
//  Created by Mrunal Bhatt on 9/16/17.
//  Copyright © 2017 Low Cost Interlock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var sliderRed : UISlider!
    @IBOutlet var sliderGreen : UISlider!
    @IBOutlet var sliderBlue : UISlider!
    @IBOutlet var colorView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onSliderChangeEvent()
    {
        // Make sure the program doesn't crash if the controls aren't connected
        if self.sliderRed == nil {
            return
        }
        
        let r: CGFloat = CGFloat(self.sliderRed.value)
        let g: CGFloat = CGFloat(self.sliderGreen.value)
        let b: CGFloat = CGFloat(self.sliderBlue.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

