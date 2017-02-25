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
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        viewControllers = []
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
