//
//  GoodInfoViewItem.swift
//  GuidePage
//
//  Created by 吕宁锋 on 15/12/31.
//  Copyright © 2015年 吕宁锋. All rights reserved.
//

import UIKit

class GoodInfoViewItem: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //自定义创建货物信息VIEW至ScrollView
    class  func addGoodItemViewIntoTheScrollView(number:Int,loadDate:String,startCity:String,endCity:String,goodInfo:String,isLittleOrBig:Bool,remark:String,uiScrollView:UIScrollView,phoneViewWitdh:CGFloat
        , grabButtonName:String)
    {
        
//        let phoneViewWitdh=self.view.center.x*2//屏幕宽度
//        print(phoneViewWitdh)
        
        let viewItemStartPoint=CGRect(origin: CGPoint(x: 5, y: (157*number)), size: CGSize(width: phoneViewWitdh-10, height: 146))//订单VIEW 坐标
        let viewItem=UIView(frame: viewItemStartPoint)//创建 自定义货源订单VIEW
        viewItem.backgroundColor=UIColor.whiteColor()
        
        
        let imageGoods: UIImageView  = UIImageView(image: UIImage(named: "loadtime.png"))
        imageGoods.frame = CGRectMake(23, 8, 22, 22)
        imageGoods.contentMode = UIViewContentMode.ScaleToFill
        viewItem.addSubview(imageGoods)//添加日期图标
        
        let lableDate = UILabel(frame: CGRect(origin: CGPoint(x: 53, y: 9), size: CGSize(width: 194, height: 21)))
        lableDate.text="装车日期"+" "+loadDate
        lableDate.textColor=UIColor.blackColor()
        lableDate.adjustsFontSizeToFitWidth=true
        viewItem.addSubview(lableDate)// 添加装车日期
        
        let viewGrayLineStartPoint=CGRect(origin: CGPoint(x: 23, y: 31), size: CGSize(width: phoneViewWitdh-40, height: 1))//订单VIEW 坐标
        let viewGrayLine=UIView(frame: viewGrayLineStartPoint)
        viewGrayLine.backgroundColor=UIColor.lightGrayColor()
        viewItem.addSubview(viewGrayLine)// 添加间隔线  用一个灰色的VIEW 高度为1替代
        
        
        let imageStart: UIImageView  = UIImageView(image: UIImage(named: "startPosition.png"))
        imageStart.frame = CGRectMake(23, 39, 22, 22)
        imageStart.contentMode = UIViewContentMode.ScaleToFill
        viewItem.addSubview(imageStart)//添加起点城市图标
        
        let lableStart = UILabel(frame: CGRect(origin: CGPoint(x: 53, y: 39), size: CGSize(width: 73, height: 21)))
        lableStart.text=startCity
        lableStart.textColor=UIColor.blackColor()
        lableStart.adjustsFontSizeToFitWidth=true
        viewItem.addSubview(lableStart)// 添加起点城市地点
        
        let imageEnd: UIImageView  = UIImageView(image: UIImage(named: "endPosition.png"))
        imageEnd.frame = CGRectMake(23, 62.5, 22, 22)
        imageEnd.contentMode = UIViewContentMode.ScaleToFill
        viewItem.addSubview(imageEnd)//添加终点城市图标
        
        let lableEnd = UILabel(frame: CGRect(origin: CGPoint(x: 53, y: 62.5), size: CGSize(width: 73, height: 21)))
        lableEnd.text=endCity
        lableEnd.textColor=UIColor.blackColor()
        lableEnd.adjustsFontSizeToFitWidth=true
        viewItem.addSubview(lableEnd)// 添加终点城市地点
        
        let imageGoodInfo: UIImageView  = UIImageView(image: UIImage(named: "goodstype.png"))
        imageGoodInfo.frame = CGRectMake(23, 86, 22, 22)
        imageGoodInfo.contentMode = UIViewContentMode.ScaleToFill
        viewItem.addSubview(imageGoodInfo)//添加货物信息图标
        
        let lableGoodInfo = UILabel(frame: CGRect(origin: CGPoint(x: 53, y: 86), size: CGSize(width: 140, height: 21)))
        lableGoodInfo.text=goodInfo
        lableGoodInfo.textColor=UIColor.blackColor()
        lableGoodInfo.adjustsFontSizeToFitWidth=true
        viewItem.addSubview(lableGoodInfo)// 添加货物信息描述
        
        var littleOrBigName="轻货"
        if(isLittleOrBig==false)
        {
            littleOrBigName="轻货"
        }
        else
        {
            littleOrBigName="重货"
        }
        
        
        //        let imageLittleOrBig: UIImageView  = UIImageView(image: UIImage(named: littleOrBigName))
        //        imageLittleOrBig.frame = CGRectMake((lableGoodInfo.frame as CGRect).origin.x+(lableGoodInfo.frame as CGRect).width, 86, 56, 22)
        //        imageLittleOrBig.contentMode = UIViewContentMode.ScaleToFill
        //        viewItem.addSubview(imageLittleOrBig)//添加轻货OR重货标识图
        
        let buttonLittleOrBig=UIButton(frame: CGRect(origin: CGPoint(x: (lableGoodInfo.frame as CGRect).origin.x+(lableGoodInfo.frame as CGRect).width, y: 86), size: CGSize(width: 37, height: 18)))
        
        buttonLittleOrBig.setTitle(littleOrBigName, forState:UIControlState.Normal)
        buttonLittleOrBig.backgroundColor=UIColor.blueColor()
        viewItem.addSubview(buttonLittleOrBig)// 添加轻货OR重货标识图

        let buttonGrab=UIButton(frame: CGRect(origin: CGPoint(x: phoneViewWitdh-110, y: 48), size: CGSize(width: 56, height: 30)))
        //buttonGrab.setBackgroundImage(UIImage(named: "graborder.png"), forState: .Normal)
        buttonGrab.setTitle(grabButtonName, forState:UIControlState.Normal)
        buttonGrab.backgroundColor=UIColor.redColor()
        viewItem.addSubview(buttonGrab)// 添加抢单按钮
        
        let viewGrayLineTwoStartPoint=CGRect(origin: CGPoint(x: 23, y: 110), size: CGSize(width: phoneViewWitdh-40, height: 1))//订单VIEW 坐标
        let viewGrayLineTwo=UIView(frame: viewGrayLineTwoStartPoint)
        viewGrayLineTwo.backgroundColor=UIColor.lightGrayColor()
        viewItem.addSubview(viewGrayLineTwo)// 添加间隔线2  用一个灰色的VIEW 高度为1替代
        
        let lableRemark = UILabel(frame: CGRect(origin: CGPoint(x: 23, y: 116), size: CGSize(width: 224, height: 21)))
        lableRemark.text="备注： "+remark
        lableRemark.textColor=UIColor.blackColor()
        lableRemark.adjustsFontSizeToFitWidth=true
        viewItem.addSubview(lableRemark)// 添加货物信息描述
        
        uiScrollView.addSubview(viewItem)//添加自定义货源VIEW
        
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
