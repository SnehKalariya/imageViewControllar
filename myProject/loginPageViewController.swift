//
//  loginPageViewController.swift
//  myProject
//
//  Created by R87 on 17/01/23.
//

import UIKit

class loginPageViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.layer.borderWidth = 2
        
    }
    @IBAction func addImageButtonAction(_ sender: UIButton) {
        showAlertView()
    }
    
    func  showAlertView(){
        let alert = UIAlertController(title: "Your Choise" , message: "", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction.init(title: "Gallery", style: .default, handler: { _ in
            self.openGallery()
            
        }))
        alert.addAction(UIAlertAction.init(title: "Camera", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker:UIImagePickerController,didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        img.image = (info[.editedImage] as? UIImage)
        dismiss(animated: true, completion: nil)
    }
    
    func openGallery(){
        let gallery = UIImagePickerController()
        gallery.delegate = self
        gallery.allowsEditing = true
        gallery.sourceType = .photoLibrary
        
        present(gallery, animated: true, completion: nil)
    }
}
