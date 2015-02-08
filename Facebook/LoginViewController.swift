//
//  LoginViewController.swift
//  Facebook
//
//  Created by Francis Phan on 1/29/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        activityIndicator.hidden = true
        self.loginButton.enabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChngedEmailField(sender: AnyObject) {
    }
    
    @IBAction func onEditPassword(sender: AnyObject) {
        self.loginButton.enabled = true;
    }
 
    
    @IBAction func onLoginButton(sender: AnyObject) {
        
        if (emailField.text.isEmpty){
            
            var alertView = UIAlertView(title: "Oops", message: "Please enter an email", delegate: nil, cancelButtonTitle: "Ok")
            alertView.show()
        }
        else if (passwordField.text == "password"){
            loginButton.enabled = false
            activityIndicator.hidden = false
            activityIndicator.startAnimating()
            
            delay(2.0, { () -> () in
                self.performSegueWithIdentifier("loginSegue", sender: nil)
                self.loginButton.enabled = true
                self.activityIndicator.hidden = true
            })
        }
        else {
            var alertView = UIAlertView(title: "Oops", message: "Password incorrect", delegate: nil, cancelButtonTitle: "Ok")
            alertView.show()
        }

        
        /*
        activityIndicator.hidden = false
        activityIndicator.startAnimating()
        delay(2) {
            self.activityIndicator.hidden = true
        }
        
        if(passwordField.text != "password"){
            
        }
        
        var alertView = UIAlertView(title: "Title", message: "Message", delegate: nil, cancelButtonTitle: "OK", otherButtonTitles: "Option 1", "Option 2")
        alertView.show()
        */
        

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
