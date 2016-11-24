//
//  MainTabBarController.swift
//  books
//
//  Created by 阳阳 on 16/11/24.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.redColor()
        // Do any additional setup after loading the view.
        
        createViewController()
    }
    
    
    //创建导航
    func  createViewController(){
        //标题
        let titleArray=["咨询中心","直播","活动中心","我的"]
        let imageArray=["collect","movie","zan","person"]
        
        let ctrlArray = ["books.ColllectViewController","books.MovieViewController","books.ZanViewController","books.PersonViewController"]
        
        var array = Array<UINavigationController>()
        
        for i in 0..<titleArray.count{
            let crt = NSClassFromString(ctrlArray[i]) as! UIViewController.Type
            let ctrl=crt.init()
            
            ctrl.tabBarItem.title = titleArray[i]
            
            
            
     
            ctrl.tabBarItem.image = UIImage(named: imageArray[i])?.imageWithRenderingMode(.AlwaysOriginal)
            let selectImage = imageArray[i]+"2"
            ctrl.tabBarItem.selectedImage = UIImage(named: selectImage)?.imageWithRenderingMode(.AlwaysOriginal)
            let navCtrl = UINavigationController(rootViewController: ctrl)
            
            array.append(navCtrl)
        }
        //修改点击过后文字的颜色
        self.tabBar.tintColor = UIColor(red: 1.0, green: 102.0/255.0, blue: 102.0/255.0, alpha: 1.0)
        self.viewControllers = array
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
