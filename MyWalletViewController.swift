//
//  MyWalletViewController.swift
//  GuidePage
//
//  Created by 吕宁锋 on 16/1/4.
//  Copyright © 2016年 吕宁锋. All rights reserved.
//

import UIKit

class MyWalletViewController: UIViewController {

    @IBOutlet weak var viewWitdh: UIView!
    @IBOutlet weak var btnPaybrCard: UIButton!
    @IBOutlet weak var btnTransferAccounts: UIButton!
    @IBOutlet weak var btncellphoneereplenishing: UIButton!
    @IBOutlet weak var btnbankCard: UIButton!
    @IBOutlet weak var btnPayCode: UIButton!
    @IBOutlet weak var btnRedPacket: UIButton!
    
    @IBOutlet weak var uiView: UIView!
   
    //让六个按钮漂亮整齐的排列在界面中
    func letSixBtnBeautiful()
    {
       //let allWitdh=self.view.center.x*2//获得界面宽度
        let screenBounds:CGRect = UIScreen.mainScreen().bounds
        let allWitdh=screenBounds.width
        let length=(allWitdh-16-2-2)/3 //获得完美的正方形按钮边长
        btnPaybrCard.frame=CGRectMake(8, 8, length, length)
        btnTransferAccounts.frame=CGRectMake( 8+length+2,  8, length, length)
        btncellphoneereplenishing.frame=CGRectMake(8+length+2+length+2, 8,length,length)
        btnbankCard.frame=CGRectMake( 8,8+length+2,length, length)
        btnPayCode.frame=CGRectMake(8+length+2, 8+length+2, length, length)
        btnRedPacket.frame=CGRectMake(8+length+2+length+2,8+length+2,length,length)
    }
    
    @IBOutlet weak var btnResertPayCode: UIButton!
    @IBOutlet weak var btnSetPayCode: UIButton!
    @IBOutlet weak var btnClose: UIButton!
    func setView2NOT()
    {
        btnPaybrCard.userInteractionEnabled=false
        btnTransferAccounts.userInteractionEnabled=false
        btncellphoneereplenishing.userInteractionEnabled=false
        btnbankCard.userInteractionEnabled=false
        btnPayCode.userInteractionEnabled=false
        btnRedPacket.userInteractionEnabled=false
        
        btnResertPayCode.userInteractionEnabled=true
        btnSetPayCode.userInteractionEnabled=true
        btnClose.userInteractionEnabled=true
        
    }
    
    func setView3NOT()
    {
        btnPaybrCard.userInteractionEnabled=true
        btnTransferAccounts.userInteractionEnabled=true
        btncellphoneereplenishing.userInteractionEnabled=true
        btnbankCard.userInteractionEnabled=true
        btnPayCode.userInteractionEnabled=true
        btnRedPacket.userInteractionEnabled=true
        
        btnResertPayCode.userInteractionEnabled=false
        btnSetPayCode.userInteractionEnabled=false
        btnClose.userInteractionEnabled=false
        
    }
    
    override func viewDidAppear(animated: Bool) {
          //  letSixBtnBeautiful() 通过AUTOLAYOUT也可以实现，放弃代码实现。屏蔽之。
        setView3NOT()
        uiView3.hidden=true

    }
    
    @IBAction func closePayCodeView3(sender: AnyObject) {
        uiView3.hidden=true
        setView3NOT()
     
        
        
    }
    @IBOutlet weak var uiView3: UIView!
    @IBOutlet weak var uiView2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setView3NOT()
        uiView3.hidden=true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

  
    
    @IBAction func btnPaymentCode(sender: UIButton){
 
        uiView3.hidden=false
        
        setView2NOT()
        
   
//       uiView2.alpha=0.5
//       uiView3.alpha=1
        
    
        

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
