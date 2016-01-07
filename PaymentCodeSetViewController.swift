//
//  PaymentCodeSetViewController.swift
//  GuidePage
//
//  Created by 吕宁锋 on 16/1/5.
//  Copyright © 2016年 吕宁锋. All rights reserved.
//

import UIKit
import QuartzCore
class PaymentCodeSetViewController: UIViewController {

    @IBOutlet weak var uiViewIDNumber: UIView!

    @IBOutlet weak var uiviewPayCode: UIView!
    @IBOutlet weak var uiviewPayCodeNext: UIView!
    @IBOutlet weak var uiViewPhone: UIView!
    
    @IBOutlet weak var btnOk: UIButton!

    //设置VIEW的边框为红色 宽度为1
    private func setViewBorderColorAndWitdh(uiView:UIView!,color:UIColor)
    {
        uiView.layer.borderColor=color.CGColor
        uiView.layer.borderWidth = 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //设置四个VIEW的边框为红色 宽度为1
        let color=btnOk.backgroundColor!
        setViewBorderColorAndWitdh(uiViewIDNumber,color:color )
        setViewBorderColorAndWitdh(uiviewPayCode,color:color )
        setViewBorderColorAndWitdh(uiviewPayCodeNext,color:color )
        setViewBorderColorAndWitdh(uiViewPhone,color:color )
        // Do any additional setup after loading the view.
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
