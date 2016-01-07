//
//  WritePayCodeViewController.swift
//  GuidePage
//
//  Created by 吕宁锋 on 16/1/6.
//  Copyright © 2016年 吕宁锋. All rights reserved.
//

import UIKit
import QuartzCore
class WritePayCodeViewController: UIViewController {

    @IBOutlet weak var btnOk: UIButton!
    @IBOutlet weak var uiViewPayCode: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let color=btnOk.backgroundColor!
        setViewBorderColorAndWitdh(uiViewPayCode,color:color )
        // Do any additional setup after loading the view.
    }
    //设置VIEW的边框为红色 宽度为1
    private func setViewBorderColorAndWitdh(uiView:UIView!,color:UIColor)
    {
        uiView.layer.borderColor=color.CGColor
        uiView.layer.borderWidth = 2
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
