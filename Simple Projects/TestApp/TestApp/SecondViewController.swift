//
//  SecondViewController.swift
//  TestApp
//
//  Created by 임수현 on 2019. 2. 7..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    var name: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if name != nil {
            label1.text = name
        } else{
            label1.text="No name"
        }
    }
}
