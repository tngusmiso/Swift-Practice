//
//  ViewHierarchyController.swift
//  BasicApp
//
//  Created by 임수현 on 2019. 3. 8..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import UIKit

class ViewHierarchyController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 서브 뷰 생성
        let frame = CGRect(x:self.view.frame.maxX/2, y:self.view.frame.maxY/2, width:200, height:120)
        let subview = UIView(frame: frame)
        
        // 서브 뷰의 색상
        subview.backgroundColor = UIColor.green
        
        // 서브 뷰 추가하기
        view.addSubview(subview)
        
        // label 생성하기
        let point = CGPoint(x: 20, y: 30)
        let size = CGSize(width: 120, height: 20)
        let subframe = CGRect(origin: point, size: size)
        let label = UILabel(frame: subframe)
        
        // label 속성
        label.text = "text label"
        label.backgroundColor = UIColor.white
        
        // 서브뷰 안에 label 추가
        subview.addSubview(label)
    }
    
}
