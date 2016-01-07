//
//  ViewController.swift
//  Public
//
//  Created by lykjc on 16/1/6.
//  Copyright © 2016年 lykjc. All rights reserved.
//

import UIKit

class UpdatePayCodeViewController: UIViewController {

    @IBOutlet weak var btnOk: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var againPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color=btnOk.backgroundColor?.CGColor
        
        self.passwordTextField.layer.borderColor = color
        self.passwordTextField.layer.borderWidth = 2
        self.againPasswordTextField.layer.borderColor = color
        self.againPasswordTextField.layer.borderWidth = 2

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

