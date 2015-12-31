//
//  GoodsViewController.swift
//  GuidePage
//
//  Created by 吕宁锋 on 15/12/30.
//  Copyright © 2015年 吕宁锋. All rights reserved.
//

import UIKit

class GoodsViewController: UIViewController {

    @IBOutlet weak var viewGoodItem: UIView!
    @IBOutlet weak var btnWholwVehicle: UIButton!
    @IBOutlet weak var btnCarpooling: UIButton!
    @IBOutlet weak var btnDedicatedLine: UIButton!
    @IBOutlet weak var btnMassGoods: UIButton!
   
    @IBOutlet weak var uiScrollView: UIScrollView!
    var truckUseType=TruckUseType.wholeVehicle //用车信息 类型 
   
    override func viewDidLoad() {
        super.viewDidLoad()
        //默认为整车
        btnWholwVehicle.setBackgroundImage(UIImage(named: "selected.png"), forState: .Normal)

        // Do any additional setup after loading the view.
    }

    var isWholeVehicle=true
    var isCarpooling=false
    var isDedicatedLine=false
    var isMassGoods=false
    //button1 选中 其余三个未选中
    func SetButtonBackGroundImage(button1:UIButton!,button2:UIButton!,button3:UIButton!,button4:UIButton!){
        button1.setBackgroundImage(UIImage(named: "selected.png"), forState: .Normal)
        button2.setBackgroundImage(UIImage(named: "unselect.png"), forState: .Normal)
        button3.setBackgroundImage(UIImage(named: "unselect.png"), forState: .Normal)
        button4.setBackgroundImage(UIImage(named: "unselect.png"), forState: .Normal)
    }
    
      
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //整车
    @IBAction func wholeVehicle(sender: UIButton) {
        if(isWholeVehicle==false)
        {
            SetButtonBackGroundImage(btnWholwVehicle,button2: btnCarpooling,button3: btnDedicatedLine
            ,button4: btnMassGoods)
            truckUseType=TruckUseType.wholeVehicle
            isWholeVehicle=true
            isCarpooling=false
            isDedicatedLine=false
            isMassGoods=false
            print(truckUseType)
        }
    }
    //拼车
    @IBAction func carpooling(sender: UIButton) {
        if(isCarpooling==false)
        {
            SetButtonBackGroundImage(btnCarpooling,button2: btnWholwVehicle,button3: btnDedicatedLine
                ,button4: btnMassGoods)
            truckUseType=TruckUseType.carpooling
            isWholeVehicle=false
            isCarpooling=true
            isDedicatedLine=false
            isMassGoods=false
            print(truckUseType)
        }

    }
    //专线
    @IBAction func dedicatedLine(sender: UIButton) {
        if(isDedicatedLine==false)
        {
            SetButtonBackGroundImage(btnDedicatedLine,button2: btnCarpooling,button3: btnWholwVehicle
                ,button4: btnMassGoods)
            truckUseType=TruckUseType.dedicatedLine
            isWholeVehicle=false
            isCarpooling=false
            isDedicatedLine=true
            isMassGoods=false
            print(truckUseType)
        }

    }
    //大宗货物
    @IBAction func massGoods(sender: UIButton) {
        if(isMassGoods==false)
        {
            SetButtonBackGroundImage(btnMassGoods,button2: btnCarpooling,button3: btnWholwVehicle
                ,button4: btnDedicatedLine)
            truckUseType=TruckUseType.massGoods
            isWholeVehicle=false
            isCarpooling=false
            isDedicatedLine=false
            isMassGoods=true
            print(truckUseType)
        }
    }
    
    
    
    
    
    //更换起点城市
    @IBAction func changeStartCity(sender: UIButton) {
    }
    var number=0
    //更换终点城市
    @IBAction func changeEndCity(sender: UIButton) {
           GoodInfoViewItem.addGoodItemViewIntoTheScrollView(number, loadDate: "2015年12月31日", startCity: "河南 郑州", endCity: "山西 太原", goodInfo: "其他类型", isLittleOrBig: false, remark: "希望尽快来拉货", uiScrollView: uiScrollView, phoneViewWitdh: self.view.center.x*2,grabButtonName: "抢单")
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
