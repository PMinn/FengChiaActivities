//
//  LoginViewController.swift
//  FengChiaActivities
//
//  Created by 廖書賢 on 2023/11/29.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.layer.cornerRadius = 10.0
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Login(_ sender: Any) {
        let username = Username.text
        let password = Password.text
        
        if username == "a12345@gmail.com" && password == "12345"{
            
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            
            let HomeVC = storyBoard.instantiateViewController(withIdentifier: "HomeVC")
            
            HomeVC.modalPresentationStyle = .fullScreen
            self.present(HomeVC, animated: true)
            Username.text = ""
            Password.text = ""
        }
        else{
            let alertVC = UIAlertController(title: "錯誤", message: "帳號密碼有誤，請再輸入一次！", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "確定", style: UIAlertAction.Style.default, handler: nil)
            
            alertVC.addAction(okButton)
            
            self.present(alertVC, animated: true, completion: nil)
            
            Password.text = ""
        }
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
