//
//  UploadViewController.swift
//  FengChiaActivities
//
//  Created by 廖書賢 on 2023/12/4.
//

import UIKit

class UploadViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var uploadButton: UIButton!
    
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var timeField: UITextField!
    
    @IBOutlet weak var locationField: UITextField!
    
    @IBOutlet weak var titleField: UITextField!
    
    @IBOutlet weak var contentField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uploadButton.layer.cornerRadius = 10.0
        imageButton.layer.cornerRadius = 10.0

        // Do any additional setup after loading the view.
    }
    @IBAction func uploadFunc(_ sender: Any) {
        let alertVC = UIAlertController(title: "訊息", message: "上傳成功", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "確定", style: UIAlertAction.Style.default, handler: nil)
        
        alertVC.addAction(okButton)
        
        self.present(alertVC, animated: true, completion: nil)
        
        timeField.text = ""
        locationField.text = ""
        titleField.text = ""
        contentField.text = ""
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
