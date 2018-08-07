//
//  ViewController.swift
//  App
//
//  Created by Vasant Hugar on 07/08/18.
//  Copyright © 2018 Vasant Hugar. All rights reserved.
//

import UIKit
import SharedCode

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let text = SharedCode.text        
        print(text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

