//
//  ViewController.swift
//  HideKeyBoard
//
//  Created by cis290 on 9/24/18.
//  Copyright © 2018 Rock Valley College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //outlets
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var txtFirst: UITextField!
    @IBOutlet weak var txtLast: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtView: UITextView!
    
    
    //actions
    @IBAction func btnBack(_ sender: UIButton) {
        scrollView.setContentOffset(CGpoint.zero, animated: true)
        
        txtFirst.becomeFirstResponder()
    }
    @IBAction func btnSave(_ sender: UIButton) {
        DismissKeyBoard()
        if (txtFirst.text=="" || txtLast.text=="" || txtEmail.text=="") {
            MsgBox("All fields required, please correct.")
        }
        else{
            if (txtView.text==""){
                txtView.text = "MyContacts \n"
            }
            //format text
            txtView.text = "\(txtView.text!) \n\(txtFirst.text!) \n\(txtLast.text!) \n\(txtEmail.text!) \n"
            txtFirst.text = ""
            txtLast.text = ""
            txtEmail.text = ""
        }
    }
    @IBAction func btnView(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

