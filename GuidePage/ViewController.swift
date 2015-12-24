//
//  ViewController.swift
//  GuidePage
//
//  Created by 吕宁锋 on 15/12/16.
//  Copyright © 2015年 吕宁锋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var guidepage: UIPageControl!
    @IBOutlet weak var buttonNext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        buttonNext.hidden=true
        
        
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func swipeGesture(sender: UISwipeGestureRecognizer) {
        guidepage.currentPage=guidepage.currentPage-1
        //if (guidepage.hidden==false)
       // {
            changeImage()
       // }
    }

    @IBAction func swipeleft(sender: UISwipeGestureRecognizer) {
        guidepage.currentPage=guidepage.currentPage+1
       // if (guidepage.hidden==false)
       // {
            changeImage()
        //}
    }
    @IBAction func FuncBTNNext(sender: AnyObject) {
    }

    @IBAction func GuidePageChanged(sender: AnyObject) {
        changeImage()
    }
    
    func changeImage()
    {
        let image1=UIImage(named: "3.png")
        let image2=UIImage(named: "123.jpg")
        let image3=UIImage(named: "5.jpg")
        let pageNumber=guidepage.currentPage;
        switch (pageNumber) {
        case 0:
            imageView.image=image1
            break;
        case 1:
            imageView.image=image2
            break;
        case 2:
            imageView.image=image3
            buttonNext.hidden=false
            //guidepage.hidden=true
            break;
        default:
            break;
        }

    }

}

