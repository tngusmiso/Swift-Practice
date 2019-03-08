//
//  IndicatorController.swift
//  BasicApp
//
//  Created by 임수현 on 2019. 3. 8..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import UIKit

class IndicatorController: UIViewController {

    @IBOutlet weak var idct_main: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButton(_ sender: Any) {
        idct_main.startAnimating()
    }
    
    @IBAction func stopButton(_ sender: Any) {
        idct_main.stopAnimating()
    }
    
}
