//
//  SignInViewController.swift
//  Task
//
//  Created by Ayush Sharma on 22/02/23.
//

import UIKit

class SignInViewController: UIViewController, UIPopoverPresentationControllerDelegate  {
    
    
    @IBOutlet var otpPopUPView: UIView!
    
    @IBOutlet weak var otpViewTextFiled: UITextField!
    
    @IBOutlet weak var mobilenoTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mobilenoTextFiled.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func requestOtpBtnPressed(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "OtpConfirmViewController") as? OtpConfirmViewController
        vc?.modalPresentationStyle = .overCurrentContext
        self.present(vc!, animated: true)
        
    }
    
    
}

extension SignInViewController: UITextFieldDelegate {
    
    
    
}



