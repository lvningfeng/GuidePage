//
//  ReleaseTruckViewController.swift
//  GuidePage
//
//  Created by 吕宁锋 on 15/12/24.
//  Copyright © 2015年 吕宁锋. All rights reserved.
//

import UIKit

import Foundation
class ReleaseTruckViewController: UIViewController {

    @IBOutlet weak var rbCompany: UIButton!
    @IBOutlet weak var rbInfoDepartment: UIButton!
    @IBOutlet weak var rbSinglePerson: UIButton!
 

    @IBOutlet weak var uiScrollView: UIScrollView!
    var certType=CertType.Company
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         rbCompany.setBackgroundImage(UIImage(named: "selected.png"), forState: .Normal)
    }
    

    var isCompany=true
    var isInfoDepartment=false
    var isSinglePerson=false
    //button1 选中 其余两个未选中
    func SetButtonBackGroundImage(button1:UIButton!,button2:UIButton!,button3:UIButton!){
        button1.setBackgroundImage(UIImage(named: "selected.png"), forState: .Normal)
        button2.setBackgroundImage(UIImage(named: "unselect.png"), forState: .Normal)
        button3.setBackgroundImage(UIImage(named: "unselect.png"), forState: .Normal)
    }
    
    @IBAction func rbClickCom(sender: AnyObject) {
        if(isCompany==false)
        {
            SetButtonBackGroundImage(rbCompany,button2: rbInfoDepartment,button3: rbSinglePerson)
            certType=CertType.Company
            isCompany=true
            isInfoDepartment=false
            isSinglePerson=false
            print(certType)
        }
    }
    @IBAction func rbClickInfoDepartment(sender: UIButton) {
        if(isInfoDepartment==false)
        {
            SetButtonBackGroundImage(rbInfoDepartment, button2: rbCompany, button3: rbSinglePerson)
            certType=CertType.InformationDepartment
            isCompany=false
            isInfoDepartment=true
            isSinglePerson=false
            print(certType)
        }
    }
  
    @IBAction func rbClickSinglePerson(sender: UIButton) {
        if(isSinglePerson==false)
        {
            SetButtonBackGroundImage(rbSinglePerson, button2: rbCompany, button3:rbInfoDepartment )
            certType=CertType.SinglePerson
            isCompany=false
            isInfoDepartment=false
            isSinglePerson=true
            print(certType)
        }
    }
   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    func creatTruckViewItem(number:Int,sv:UIScrollView)
    {
        let allWitdh=self.view.center.x*2
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
    var number:Int=0
    //添加车源
    @IBAction func InsertTruck(sender: UIButton) {
        
        uiScrollView.contentSize =  CGSizeMake(0, CGFloat(6+33*(number+1)) );
        uiScrollView.showsVerticalScrollIndicator=true
        creatTruckViewItem(number,sv: uiScrollView)
        number=number+1
             
    }

    @IBAction func buttonOK(sender: UIButton) {
    

    
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
