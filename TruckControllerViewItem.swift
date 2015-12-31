//
//  TruckControllerViewItem.swift
//  GuidePage
//
//  Created by 吕宁锋 on 15/12/24.
//  Copyright © 2015年 吕宁锋. All rights reserved.
//

import UIKit

class TruckControllerViewItem {

    class func creatTruckViewItem(number:Int,sv:UIScrollView,allWitdh:CGFloat)
    {
        
//        let allWitdh=self.view.center.x*2
        print(String(allWitdh))
        let startpoint=CGRect(origin: CGPoint(x: 7, y: 6+33*number), size: CGSize(width: allWitdh-20, height: 30))
        let viewItem=UIView(frame: startpoint)
        let lableNumber = UILabel(frame: CGRect(origin: CGPoint(x: 4, y: 4), size: CGSize(width: (allWitdh-4)/5, height: 21)))
        lableNumber.text="车辆"+" "+String(number+1)
        lableNumber.textColor=UIColor.blackColor()
        //lableNumber.font=UIFont()
        lableNumber.adjustsFontSizeToFitWidth=true
        viewItem.addSubview(lableNumber)
        let lableTruckInfo = UILabel(frame: CGRect(origin: CGPoint(x: (lableNumber.frame as CGRect).origin.x+(lableNumber.frame as CGRect).width, y: 4), size: CGSize(width: ((allWitdh-4)/5)*3.15, height: 21)))
        lableTruckInfo.text="陕汽重卡 9.6米 载重30吨 司机: 段晓明"
        lableTruckInfo.textColor=UIColor.blackColor()
        lableTruckInfo.adjustsFontSizeToFitWidth=true
        viewItem.addSubview(lableTruckInfo)
        let buttonAdd=UIButton(frame: CGRect(origin: CGPoint(x: (lableTruckInfo.frame as CGRect).origin.x+(lableTruckInfo.frame as CGRect).width, y: 4), size: CGSize(width: 21, height: 21)))
        buttonAdd.setBackgroundImage(UIImage(named: "expand.png"), forState: .Normal)
        viewItem.addSubview(buttonAdd)
        sv.addSubview(viewItem)
    }
}
