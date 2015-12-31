//
//  MyOrderViewController.swift
//  GuidePage
//
//  Created by 吕宁锋 on 15/12/31.
//  Copyright © 2015年 吕宁锋. All rights reserved.
//

import UIKit

class MyOrderViewController: UIViewController {

    @IBOutlet weak var uiScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var number=0
    @IBAction func SwipeFunc(sender: AnyObject) {
        GoodInfoViewItem.addGoodItemViewIntoTheScrollView(number, loadDate: "2015年12月31日", startCity: "河南 郑州", endCity: "山西 太原", goodInfo: "其他类型", isLittleOrBig: false, remark: "求16立方米车，车型不限", uiScrollView: uiScrollView, phoneViewWitdh: self.view.center.x*2,grabButtonName: "已完成")
        uiScrollView.contentSize=CGSizeMake(0, CGFloat(15+146*(number+1)) );
        number=number+1
       
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
