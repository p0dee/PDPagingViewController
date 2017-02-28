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
    var menuBar = PDPagingMenuBar()
    
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
        scrollView.isPagingEnabled = true
        view.addSubview(scrollView)
        var contentSize = view.bounds.size
        contentSize.width *= CGFloat(viewControllers.count)
        scrollView.contentSize = contentSize
        menuBar.backgroundColor = UIColor.lightGray
        menuBar.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 64)
        menuBar.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
        menuBar.titles = viewControllers.map({ return $0.title ?? "" })
        view.addSubview(menuBar)
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
