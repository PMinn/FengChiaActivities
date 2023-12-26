//
//  SettingViewController.swift
//  FengChiaActivities
//
//  Created by 廖書賢 on 2023/12/20.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let settings = ["個人資訊", "登入與安全性", "通知", "聲音", "背景圖片"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 取得 tableView 目前使用的 cell
        let cell =
            tableView.dequeueReusableCell(withIdentifier: "AcademCell", for: indexPath) as UITableViewCell
        
        // 顯示的內容
        cell.textLabel?.text = settings[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 18.0)
        //cell.detailTextLabel.text = "Detail"


        //將設定好的cell回傳
        return cell

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
