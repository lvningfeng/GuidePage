//
//  MineViewController.swift
//  GuidePage
//
//  Created by 吕宁锋 on 16/1/6.
//  Copyright © 2016年 吕宁锋. All rights reserved.
//

import UIKit

class MineViewController: UIViewController {

    
    @IBOutlet weak var uiScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        makeCell("history.png",labeleText:"历史记录")
        makeCell("myattention.png",labeleText:"我的关注")
        makeCell("payhistory.png",labeleText:"消费历史")
        let uiButtonNext = makeCell("payByCard.png",labeleText:"我的钱包")
        
        uiButtonNext.addTarget(self, action: Selector("next_MyWallet:")
            , forControlEvents: UIControlEvents.TouchUpInside)

        makeCell("findFriends.png",labeleText:"邀请好友")
        makeCell("myFamilarTrucks.png",labeleText:"我的熟车")
        makeCell("setInfo.png",labeleText:"设置")
        // Do any additional setup after loading the view.
    }

    func next_MyWallet(sender:UIButton)
    {
//        let walletVC = MyWalletViewController()
//
//        
////        let sb = UIStoryboard(name:"Main", bundle: nil)
////        print(sb)
//       // let vc = sb.instantiateViewControllerWithIdentifier("MyWallet") as! ViewController
//      //  self.presentViewController(vc, animated: true, completion: nil)
//        
////        let storyboard=self.storyboard
////        let wallet=storyboard!.instantiateViewControllerWithIdentifier("MyWallet") as! ViewController
//        
//        self.navigationController?.pushViewController(walletVC, animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var number=0
    func makeCell(imageName:String,labeleText:String)->UIButton
    {
        let screenWitdh=UIScreen.mainScreen().bounds.width
        
        let length=35
        let imageView: UIImageView  = UIImageView(image: UIImage(named: imageName))
        imageView.frame = CGRectMake(10,  3 + (CGFloat(number)*CGFloat(length)), 30, 30)

        uiScrollView.addSubview(imageView)
        
        
        let lableRemark = UILabel(frame: CGRect(origin: CGPoint(x: 58, y: 7 + (CGFloat(number)*CGFloat(length))), size: CGSize(width: 100, height: 21)))
        lableRemark.text=labeleText
        lableRemark.textColor=UIColor.blackColor()
        //lableRemark.font=UIFont.systemFontSize(17)
        lableRemark.adjustsFontSizeToFitWidth=true
        uiScrollView.addSubview(lableRemark)
        
        let buttonGrab=UIButton(frame: CGRect(origin: CGPoint(x: screenWitdh-45, y: 3+(CGFloat(number)*CGFloat(length))), size: CGSize(width: 30, height: 30)))
        buttonGrab.setImage(UIImage(named: "expand.png"), forState: .Normal)
        uiScrollView.addSubview(buttonGrab)

        uiScrollView.contentSize=CGSizeMake(0, CGFloat(3+35*(number+1)) );
        number=number+1
        
        let lableLine=UILabel(frame: CGRect(origin: CGPoint(x: 10, y: -3 + (CGFloat(number)*CGFloat(length))), size: CGSize(width: screenWitdh-20, height: 1)))
        lableLine.backgroundColor=UIColor.grayColor()
        if(number<=6)
        {
            uiScrollView.addSubview(lableLine)
        }
  
        return buttonGrab
        
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
