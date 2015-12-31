//
//  RegisterViewController.swift
//  GuidePage
//
//  Created by 吕宁锋 on 15/12/23.
//  Copyright © 2015年 吕宁锋. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var uitxtRegCode: UITextField!
    @IBOutlet weak var uitxtPwd: UITextField!
    @IBOutlet weak var uitxtMobilephone: UITextField!
    @IBOutlet weak var uitxtName: UITextField!
    @IBOutlet weak var uiBtnReadAndAgree: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var isCheck=false
    @IBAction func ReadandAgree(sender: UIButton) {
        if(isCheck==true)
        {
            uiBtnReadAndAgree.setBackgroundImage(UIImage(named: "unselect.png"), forState: .Normal)
            isCheck=false
       
        }
        else
        {
            uiBtnReadAndAgree.setBackgroundImage(UIImage(named: "selected.png"), forState: .Normal)
            isCheck=true
        }
        print(isCheck)
    }

    @IBAction func Register(sender: UIButton) {
    }
    
    
    @IBAction func GetCode(sender: UIButton) {
    }
    @IBAction func GoLogIn(sender: UIButton) {
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
