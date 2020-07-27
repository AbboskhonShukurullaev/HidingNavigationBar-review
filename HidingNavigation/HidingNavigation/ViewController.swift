//
//  ViewController.swift
//  HidingNavigation
//
//  Created by 1 on 7/15/20.
//  Copyright © 2020 1. All rights reserved.
//

import UIKit
import HidingNavigationBar

class ViewController: UIViewController {
    var hidingNavBarManager: HidingNavigationBarManager?
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var extView: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hidingNavBarManager = HidingNavigationBarManager(viewController: self, scrollView: scroll)
        
        let extensionView = extView
        hidingNavBarManager?.addExtensionView(extensionView!)
        
        if let toolBar = navigationController?.toolbar {
            hidingNavBarManager?.manageBottomBar(toolBar)
                    }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        hidingNavBarManager?.viewWillAppear(animated)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        hidingNavBarManager?.viewDidLayoutSubviews()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        hidingNavBarManager?.viewWillDisappear(animated)
    }
    
//    func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool {
//        hidingNavBarManager?.shouldScrollToTop()
//
//        return true
//    }


}

