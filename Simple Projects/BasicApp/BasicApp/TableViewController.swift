//
//  TableViewController.swift
//  BasicApp
//
//  Created by 임수현 on 2019. 3. 8..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import UIKit

class TableController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // local variable
    let cellIdentifier: String = "cell"
    let dateFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }()
    
    let korean: [String] = ["가","나","다","라","마","바","사","아","자","차","카","타","파","하"]
    let alphabet: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","n","m","o","p","q","r","s","t","u","v","w","x","y","z"]
    var dates: [Date] = []
    
    // IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //몇개의 section을 사용하는지
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    //section에 해당하는 row가 몇개여야 하는지
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //섹션별로 다른 row
        switch section{
        case 0:
            return korean.count
        case 1:
            return alphabet.count
        case 2:
            return dates.count
        default:
            return 0
        }
    }
    
    //row마다 해당하는 셀
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
        
        //cell에 포함된 데이터
        if indexPath.section<2{
            let text: String = indexPath.section == 0 ? korean[indexPath.row] : alphabet[indexPath.row]
            cell.textLabel?.text = text
        }else{
            cell.textLabel?.text = self.dateFormatter.string(from: dates[indexPath.row])
        }
        
        return cell
    }
    
    //section의 title(header)
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section<2{
            return section == 0 ? "한글" : "영어"
        }
        return "날짜"
    }
    
    
    //IBAction
    @IBAction func touchUpAddButton(_ sender: Any) {
        dates.append(Date())
//        self.tableView.reloadData()   //모든 데이터를 다시 재로드
        
        self.tableView.reloadSections(IndexSet(2...2), with: UITableView.RowAnimation.automatic )
    }
    

}
