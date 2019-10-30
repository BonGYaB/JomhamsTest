//
//  HomeViewController.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/2/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var iconSearch: UIImageView!
    @IBOutlet weak var categoryStackView: UIStackView!
    @IBOutlet weak var recommendStackView: UIStackView!
    @IBOutlet weak var couponStackView: UIStackView!
    @IBOutlet weak var buttonRadius: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        initData()
        initEvent()
    }
    
    private func initView() {
        searchView.layer.cornerRadius = 10
        iconSearch.setImageColor(color: UIColor(red: 0.63, green:0.16, blue:0.16, alpha:1.0))
    }
    
    private func initData() {
//        let recommendData = [
//                                ["food", "icCoupon", "Most Used Coupon"],
//                                ["food1", "icCoupon", "Most View"],
//                                ["food2", "icCoupon", "Top View"]
//                            ]
//
//        for d in recommendData
//        {
//
//
//            let v = UIView(frame: CGRect(x: 0, y: 0, width: (self.recommendStackView.frame.size.width / CGFloat(recommendData.count)) - 10, height: self.recommendStackView.frame.height))
//            v.layer.cornerRadius = 10
//            v.backgroundColor = UIColor.lightGray
//
//            let bgImage = UIImageView(frame: CGRect(x: 0, y: 0, width: v.frame.size.width, height: v.frame.size.height))
//            bgImage.image = UIImage(named: d[0])
//            bgImage.contentMode = .scaleAspectFill
//            bgImage.layer.cornerRadius = 10
//
//            let iconImage = UIImageView(frame: CGRect(x: 0, y: 10, width: v.frame.size.width, height: 35))
//            iconImage.image = UIImage(named: d[1])
//            iconImage.contentMode = .scaleAspectFit
//            iconImage.layer.cornerRadius = 10
//
//            let labelName = UILabel(frame: CGRect(x: 0, y: 50, width: v.frame.size.width, height: 40))
//            labelName.text = d[2]
//            labelName.contentMode = .center
//
//            v.addSubview(bgImage)
//            v.addSubview(iconImage)
//            v.addSubview(labelName)
//
//            self.recommendStackView.addSubview(v)
//        }
//
//        self.recommendStackView.contentMode = .scaleAspectFit
    }
    
    private func initEvent() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(clickSearch(button:)))
        self.searchView.addGestureRecognizer(gesture)
    }
    
    @objc private func clickSearch(button: UIButton) {
        print("iconSearch: test")
        self.present(SearchViewController.initialNib(), animated: true, completion: nil)
    }
}
