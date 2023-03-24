//
//  ViewController.swift
//  myProject
//
//  Created by R87 on 16/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUserNameLabel()
        setPasswordLabel()
        
   }

    func setUserNameLabel(){
        userNameLabel.layer.cornerRadius = 10
        userNameLabel.layer.borderWidth = 2
        userNameLabel.layer.borderColor = UIColor.black.cgColor
        userNameLabel.layer.masksToBounds = true
    }

    func setPasswordLabel(){
        passwordLabel.layer.cornerRadius = 10
        passwordLabel.layer.borderWidth = 2
        passwordLabel.layer.borderColor = UIColor.black.cgColor
        passwordLabel.layer.masksToBounds = true
    }


    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        if userNameTextField.text == "" && passwordTextField.text == ""{
            showalert(title: "Plese enter your User Name & Password")
        }
        else if userNameTextField.text == ""{
            showalert(title: "Plese enter your User Name")
        }
        else if passwordTextField.text == ""{
            showalert(title: "Plese enter your Password")
        }
        navigat()
    }
    
    func showalert(title:String) {
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }

    @IBAction func singInPageAction(_ sender: UIButton) {
        navigat2()
    }
    
    
    
    func navigat(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "loginPageViewController") as! loginPageViewController
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    func navigat2(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "SingInPage") as! SingInPage
        navigationController?.pushViewController(navigation, animated: true)
    }
}


