//
//  SingInPage.swift
//  myProject
//
//  Created by R87 on 23/01/23.
//

import UIKit

class SingInPage: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signInButton(_ sender: UIButton) {
        navigat()
    }
    func navigat(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "loginPageViewController") as! loginPageViewController
        navigationController?.pushViewController(navigation, animated: true)
    }
}
