//
//  UIButtonController.swift
//  BasicApp
//
//  Created by 임수현 on 2019. 3. 8..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import UIKit

class UIButtonController: UIViewController {

    @IBOutlet weak var lb_main: UILabel!
    @IBOutlet weak var tf_changeLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Pop 버튼 누르면 뒤로가기
    @IBAction func PopButtonClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    // Label 글자색 변경
    @IBAction func changeLabelColor(_ sender: Any) {
        if lb_main.textColor == UIColor.red{
            lb_main.textColor = UIColor.black
        }else{
            lb_main.textColor = UIColor.red
        }
    }
    
    // Label 배경색 변경
    @IBAction func changeLabelBackground(_ sender: Any) {
        if lb_main.backgroundColor == UIColor.yellow{
            lb_main.backgroundColor = UIColor.white
        }else{
            lb_main.backgroundColor = UIColor.yellow
        }
    }
    
    // text field의 내용으로 변경
    @IBAction func changeLabelContent(_ sender: Any) {
        lb_main.text = tf_changeLabel.text
        tf_changeLabel.text = ""
    }
}
