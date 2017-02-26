//
//  PDPagingViewController.swift
//  PDPagingViewController
//
//  Created by Takeshi Tanaka on 2017/02/25.
//  Copyright © 2017 p0dee. All rights reserved.
//

import UIKit

class PDPagingViewController: UIViewController {
    
    var viewControllers: [UIViewController]
    
    lazy var scrollView = UIScrollView()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        viewControllers = []
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        setUpViewControllers()
    }
    
    func setUpViews() {
        scrollView.frame = view.bounds
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(scrollView)
        var contentSize = view.bounds.size
        contentSize.width *= CGFloat(viewControllers.count)
        scrollView.contentSize = contentSize
    }
    
    func setUpViewControllers() {
        viewControllers.forEach {
            self.addChildViewController($0)
            view.addSubview($0.view)
            //TODO: 以下実装追加
            // https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html
        }
    }
    
}
