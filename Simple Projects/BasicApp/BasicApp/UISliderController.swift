//
//  UISliderController.swift
//  BasicApp
//
//  Created by 임수현 on 2019. 3. 8..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import UIKit

class UISliderController: UIViewController {

    @IBOutlet weak var slider_main: UISlider!
    @IBOutlet weak var tf_maxVal: UITextField!
    @IBOutlet weak var tf_minVal: UITextField!
    @IBOutlet weak var tf_curVal: UITextField!
    @IBOutlet weak var lb_curVal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func MaxValChange(_ sender: Any) {
        if let maxVal = tf_maxVal.text{
            slider_main.maximumValue = Float(maxVal)!
        }
    }
    
    @IBAction func MinValChange(_ sender: Any) {
        if let minVal = tf_minVal.text{
            slider_main.minimumValue = Float(minVal)!
        }
    }
    
    @IBAction func CurrentValChange(_ sender: Any) {
        if let curVal = tf_curVal.text{
            slider_main.value = Float(curVal)!
        }
    }
    @IBAction func SliderValChanged(_ sender: UISlider) {
        lb_curVal.text = String(format:" %0.1f",sender.value)
    }
}
