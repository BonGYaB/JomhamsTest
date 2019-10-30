//
//  RestaurantDetailViewController.swift
//  JomhamsTest
//
//  Created by SEAN Sen on 6/4/19.
//  Copyright © 2019 SEAN Sen. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, NibIntializable, UIScrollViewDelegate {
    @IBOutlet weak var contentScrollView: UIScrollView!
    private var lastContentOffset: CGFloat = 0
    @IBOutlet weak var topView: UIView!
    private var fixedFrame: CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         initView()
    }
    
    private func initView() {
        contentScrollView.delegate = self
        fixedFrame = self.topView.frame
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        fixedFrame.origin.y = 0 + scrollView.contentOffset.y
        self.topView.frame = fixedFrame
        
        if (self.lastContentOffset > scrollView.contentOffset.y) {
            // move up
            if scrollView.contentOffset.y <= 200 {
                self.topView.alpha = 0.8
                self.topView.backgroundColor = UIColor.darkGray
            }
        }
        else if (self.lastContentOffset < scrollView.contentOffset.y) {
            // move down
            if scrollView.contentOffset.y >= 250 {
                self.topView.alpha = 1
                self.topView.backgroundColor = UIColor.init(displayP3Red: 0.63, green:0.16, blue:0.16, alpha:1.0)
            }
        }
        
        // update the new position acquired
        self.lastContentOffset = scrollView.contentOffset.y
    }
    
    //Mark: Action
    
    @IBAction func buttonBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

