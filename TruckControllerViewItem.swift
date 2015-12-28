//
//  TruckControllerViewItem.swift
//  GuidePage
//
//  Created by 吕宁锋 on 15/12/24.
//  Copyright © 2015年 吕宁锋. All rights reserved.
//

import UIKit

class TruckControllerViewItem {

    class func creatTruckViewItem(number:Int,sv:UIScrollView)
    {
        
        let startpoint=CGRect(origin: CGPoint(x: 7, y: 13+33*number), size: CGSize(width: 273, height: 30))
        let viewItem=UIView(frame: startpoint)
       
        let lableNumber = UILabel(frame: CGRect(origin: CGPoint(x: 4, y: 4), size: CGSize(width: 48, height: 21)))
        lableNumber.text="车辆"+" "+String(number+1)
        viewItem.addSubview(lableNumber)
        
        let lableTruckInfo = UILabel(frame: CGRect(origin: CGPoint(x: 52, y: 4), size: CGSize(width: 190, height: 21)))
        lableTruckInfo.text="陕汽重卡 9.6米 载重30吨 司机: 段晓明"
        viewItem.addSubview(lableTruckInfo)
        
        let buttonAdd=UIButton(frame: CGRect(origin: CGPoint(x: 243, y: 4), size: CGSize(width: 20, height: 20)))
        
        sv.addSubview(buttonAdd)
    }
}
