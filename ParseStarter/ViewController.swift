//
//  ViewController.swift
//  ParseStarter
//
//  Created by Xuehua Chen on 1/5/17.
//  Copyright © 2017 Xuehua Chen. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fooObj = PFObject(className: "foo")
        fooObj["test"] = "hello"
        
        fooObj.saveInBackground { (succeed, error) in
            if (succeed) {
                print("Oject saved successfully")
            } else {
                var errMsg = "Please try later again"
                if error != nil {
                    errMsg = errMsg + error!.localizedDescription
                }
                print(errMsg)
            }
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

