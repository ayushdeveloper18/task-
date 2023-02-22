//
//  OtpConfirmViewController.swift
//  Task
//
//  Created by Ayush Sharma on 22/02/23.
//

import UIKit

class OtpConfirmViewController: UIViewController {
    
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf4: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tf1.delegate = self
        self.tf2.delegate = self
        self.tf3.delegate = self
        self.tf4.delegate = self
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func requestOtpBtnPressed(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController
        vc?.modalPresentationStyle = .fullScreen
        self.present(vc!, animated: true)
        
    }
    
    
    
    
}

extension OtpConfirmViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if ((textField.text?.count)! < 1 ) && (string.count > 0) {
            
            if textField == tf1 {
                tf2.becomeFirstResponder()
            }
            if textField == tf2 {
                tf3.becomeFirstResponder()
            }
            if textField == tf3 {
                tf4.becomeFirstResponder()
            }
            if textField == tf4 {
                tf4.resignFirstResponder()
            }
            textField.text = string
            return false
            
            
        }
        else if ((textField.text?.count)! >= 1) && (string.count == 0) {
            if textField == tf2 {
                tf1.becomeFirstResponder()
            }
            if textField == tf3 {
                tf2.becomeFirstResponder()
            }
            if textField == tf4 {
                tf3.becomeFirstResponder()
            }
            if textField == tf1 {
                tf1.resignFirstResponder()
            }
            
            textField.text = ""
            return false
        } else if (textField.text?.count)! >= 1 {
            textField.text = string
            return false
        }
        
        return true
        
        
        
    }
}
