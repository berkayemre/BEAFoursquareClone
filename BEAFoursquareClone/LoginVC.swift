//
//  ViewController.swift
//  BEAFoursquareClone
//
//  Created by Berkay Emre Aslan on 28.01.2024.
//

import UIKit
import Parse

class LoginVC: UIViewController {
    
    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
        
    }

    @IBAction func signInClicked(_ sender: Any) {
        if userNameText.text != "" && passwordText.text != "" {
            
            PFUser.logInWithUsername(inBackground: userNameText.text!, password: passwordText.text!) { user, error in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }else{
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
            
        }else{
            makeAlert(titleInput: "Error", messageInput: "Username / Password??")
        }
        
        
    }
    @IBAction func signUpClicked(_ sender: Any) {
        
        if userNameText.text != "" && passwordText.text != "" {
            
            let user = PFUser()
            user.username = userNameText.text!
            user.password = passwordText.text!
            
            user.signUpInBackground { success, error in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }else{
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
            
        }else{
            makeAlert(titleInput: "Error", messageInput: "Username / Password??")
        }
        
            
        }
    func makeAlert(titleInput : String , messageInput : String){
                
                let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
    }
    
}

