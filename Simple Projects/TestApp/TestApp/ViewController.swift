//
//  ViewController.swift
//  TestApp
//
//  Created by 임수현 on 2019. 2. 7..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var textField1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        bt1.setTitle("test", for: UIControl.State.normal)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "bt" {
            (segue.destination as! SecondViewController).name = textField1.text
            print(textField1.text!)
        }
        
    }
}

