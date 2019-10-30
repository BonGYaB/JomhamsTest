//
//  ViewController.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/1/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, NibIntializable {
    private let layout = UICollectionViewFlowLayout()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UITabBar.appearance().tintColor = UIColor(red: 0.63, green:0.16, blue:0.16, alpha:1.0)
        
        let homeController = HomeViewController()
        let couponController = CouponViewController()
        let fovoriteController = FavoriteViewController()
        let profileController = ProfileViewController()
        
        viewControllers = [createDummyNavControllerWithTitle(controller: homeController, title: "Home", imageName: "icHome", topBarHidden: true),
                           createDummyNavControllerWithTitle(controller: couponController, title: "Coupon", imageName: "icCoupon", topBarHidden: false),
                           createDummyNavControllerWithTitle(controller: fovoriteController, title: "Favorite", imageName: "icHeart", topBarHidden: true),
                           createDummyNavControllerWithTitle(controller: profileController, title: "Me", imageName: "icProfile", topBarHidden: true)]
    }

    private func createDummyNavControllerWithTitle(controller: UIViewController, title: String, imageName: String, topBarHidden: Bool) -> UINavigationController {
        let navController = UINavigationController(rootViewController: controller)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage.init(named: imageName)
        navController.tabBarItem.badgeColor = UIColor.black
        navController.navigationBar.isHidden = topBarHidden
        
        return navController
    }
}

