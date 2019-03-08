//
//  ImageProgressController.swift
//  BasicApp
//
//  Created by 임수현 on 2019. 3. 8..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import UIKit

class ImageProgressController: UIViewController {
    
    //IBOutlets
    @IBOutlet weak var iv_main: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //IBActions
    @IBAction func DownloadImage(_ sender: UIButton) {
        
        // 이미지 URL
        let imgURL: URL = URL(string : "https://upload.wikimedia.org/wikipedia/commons/5/54/Worsley_packet_house_closeup_large_image.jpg")!
        
        // 비동기를 위한 OperationQueue(백그라운드)
        OperationQueue().addOperation {
            let data:Data = try! Data(contentsOf: imgURL)
        
            // UI관련 동작은 main 스레드에서 작동해야 함
            OperationQueue.main.addOperation {
                self.iv_main.image = UIImage(data: data)
                sender.setTitle("DONE", for: .normal)
                sender.isEnabled = false
            }
        }
    }
}
