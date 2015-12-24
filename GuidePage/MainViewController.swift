//
//  MainViewController.swift
//  GuidePage
//
//  Created by 吕宁锋 on 15/12/16.
//  Copyright © 2015年 吕宁锋. All rights reserved.
//

import UIKit
import Alamofire

class MainViewController: UIViewController {

    @IBOutlet weak var btnlogIn: UIButton!
    @IBOutlet weak var txtPassWord: UITextField!
    @IBOutlet weak var txtAccountNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.setHidesBackButton(true, animated: true)
        btnlogIn.backgroundColor=UIColor(red:0.8,green:0.8,blue:0.8,alpha:1.0)

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAction(sender: AnyObject) {
        
        let accountNumber=txtAccountNumber.text
        let password=txtPassWord.text

        
        
        
        

        
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
