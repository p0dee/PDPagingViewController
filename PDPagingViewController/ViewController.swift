//
//  ViewController.swift
//  PDPagingViewController
//
//  Created by Takeshi Tanaka on 2017/02/25.
//  Copyright © 2017 p0dee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Do any additional setup after loading the view, typically from a nib.
        let vc = PDPagingViewController()
        var vcs = [UIViewController]()
        for _ in 0..<5 {
            vcs.append(UITableViewController())
        }
        vc.viewControllers = vcs
        self.present(vc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

