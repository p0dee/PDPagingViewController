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
        for (i, c) in viewControllers.enumerated() {
            self.addChildViewController(c)
            c.view.frame = self.view.bounds.offsetBy(dx: CGFloat(i) * self.view.bounds.width, dy: 0)
            scrollView.addSubview(c.view)
            c.didMove(toParentViewController: self)
        }
    }
    
}
