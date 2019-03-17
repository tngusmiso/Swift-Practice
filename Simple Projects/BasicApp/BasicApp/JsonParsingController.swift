//
//  JsonParsingController.swift
//  BasicApp
//
//  Created by 임수현 on 2019. 3. 12..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import UIKit

class JsonParsingController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "cell"
    var friends: [Friend] = []
    var people: [Person] = []
    
    //몇개의 section을 사용하는지
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //section의 title(header)
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "에셋으로 받아온 json" : "url로 파싱한 json"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.friends.count
        case 1:
            return self.people.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //셀 지정
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
        
        if indexPath.section < 1{
            
            //셀에 데이터 입력
            let friend: Friend = self.friends[indexPath.row]
            cell.textLabel?.text = friend.nameAndAge
            cell.detailTextLabel?.text = friend.fullAddress
            cell.imageView?.image = nil
            
        } else {
            
            let person: Person = self.people[indexPath.row]
            cell.textLabel?.text = person.name.full
            cell.detailTextLabel?.text = person.email
            cell.imageView?.image = nil
            
            // 이미지를 받아옴
            DispatchQueue.global().async {
                
                guard let imageURL: URL = URL(string: person.picture.thumbnail) else {return}
                guard let imageData: Data = try? Data(contentsOf: imageURL) else {return}
                
                DispatchQueue.main.async {
                    if let index: IndexPath = tableView.indexPath(for: cell) {
                        if index.row == indexPath.row{
                            cell.imageView?.image = UIImage(data: imageData)
                        }
                    }
                }
            }
        }
        return cell
    }
    

    override func viewDidAppear(_ animated: Bool) {
        // 디코더 선언
        let jsonDecoder = JSONDecoder()
        
        // Asset 불러오기
        guard let dataAsset:NSDataAsset = NSDataAsset(name: "friends")
            else { return }
        
        // 디코딩
        do {
            self.friends = try jsonDecoder.decode([Friend].self, from: dataAsset.data)
        } catch {
            print(error.localizedDescription)
        }
        
        //테이블 뷰
        self.tableView.reloadData()
        
        // URL
        guard let url: URL = URL(string: "https://randomuser.me/api/?results=20&inc=name,email,picture") else {return}
        
        // 세션 만들기
        let session: URLSession = URLSession(configuration: .default)
        
        // dataTask 만들기 - url로 요청
        let dataTask: URLSessionDataTask = session.dataTask(with: url) {
            // 당장 실행되는 부분이 아님
            
            // 서버의 응답이 왔을 때 호출되는 부분
            (data: Data?, response: URLResponse?, error: Error?) in
            
            // 오류가 있으면
            if let error = error{
                print(error.localizedDescription)
                return
            }
            
            // 데이터를 받아 왔으면
            guard let data = data else {return}
            do {
                // 디코딩
                let apiResponse: APIResponse = try JSONDecoder().decode(APIResponse.self, from:data)
                self.people = apiResponse.results
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()  //메인 스레드에서 동작해야 함
                }
            } catch(let err) {
                print(err.localizedDescription)
            }
        }
        
        dataTask.resume() // 여기서 서버에 요청을 보냄
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//        // 디코더 선언
//        let jsonDecoder = JSONDecoder()
//
//        // Asset 불러오기
//        guard let dataAsset:NSDataAsset = NSDataAsset(name: "friends")
//        else { return }
//
//        // 디코딩
//        do {
//            self.friends = try jsonDecoder.decode([Friend].self, from: dataAsset.data)
//        } catch {
//            print(error.localizedDescription)
//        }
//
//        //테이블 뷰
//        self.tableView.reloadData()
//
//    }
    
}
