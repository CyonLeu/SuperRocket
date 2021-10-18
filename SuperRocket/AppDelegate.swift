//
//  AppDelegate.swift
//  SuperRocket
//
//  Created by Yong Liu on 2021/10/6.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabController: UITabBarController?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        
        //初始化tab页面
        setupTabController()
        
        window?.rootViewController = tabController
        window?.makeKeyAndVisible()
        
        return true
    }

    func setupTabController(){
        tabController = UITabBarController()
        tabController?.tabBar.tintColor = UIColor.white.withAlphaComponent(0.9)
        
        let homeVC = FWHomePageViewController()
        homeVC.title = "首页"
        homeVC.tabBarItem = UITabBarItem(title: "首页", image: UIImage(named: "bar_icon_home_gray")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "bar_icon_home")?.withRenderingMode(.alwaysOriginal))
        homeVC.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.green]
                                                 , for: UIControl.State.selected)
        let homeNavController = UINavigationController(rootViewController: homeVC)
        
        let rankVC = FWRankPageViewController()
        rankVC.title = "排行榜"
        rankVC.tabBarItem = UITabBarItem(title: "排行榜", image: UIImage(named: "bar_icon_group_gray")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "bar_icon_group")?.withRenderingMode(.alwaysOriginal))
        rankVC.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.green]
                                                 , for: UIControl.State.selected)
        let rankNavController = UINavigationController(rootViewController: rankVC)
        
        let mineVC = FWMineViewController()
        mineVC.title = "我"
        mineVC.tabBarItem = UITabBarItem(title: "我", image: UIImage(named: "bar_icon_my_gray")?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "bar_icon_my")?.withRenderingMode(.alwaysOriginal))
        mineVC.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.green]
                                                 , for: UIControl.State.selected)
        let mineNavController = UINavigationController(rootViewController: mineVC)
        
        tabController?.setViewControllers([homeNavController, rankNavController, mineNavController], animated: true)
    }


}

