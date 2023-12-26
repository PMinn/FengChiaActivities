//
//  RegisterViewController.swift
//  FengChiaActivities
//
//  Created by 廖書賢 on 2023/12/8.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var password2Field: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerButton.layer.cornerRadius = 10.0
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButton(_ sender: Any) {
        if emailField.text == "" ||  passwordField.text == "" || password2Field.text == ""{
            let alertVC = UIAlertController(title: "訊息", message: "帳號或密碼不能為空，請再輸入一次！", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "確定", style: UIAlertAction.Style.default, handler: nil)
            
            alertVC.addAction(okButton)
            
            self.present(alertVC, animated: true, completion: nil)
        }
        else{
            let alertVC = UIAlertController(title: "訊息", message: "註冊成功", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "確定", style: UIAlertAction.Style.default, handler: nil)
            
            alertVC.addAction(okButton)
            
            self.present(alertVC, animated: true, completion: nil)
        }
        
        emailField.text = ""
        passwordField.text = ""
        password2Field.text = ""
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
