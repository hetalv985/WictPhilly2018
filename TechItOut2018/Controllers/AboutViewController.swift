//
//  ViewController.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 4/7/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit
import SafariServices

class AboutViewController: UIViewController {

    @IBAction func navigateToRegister(_ sender: Any) {
        let sfViewController = SFSafariViewController(url: URL(string: "https://events.r20.constantcontact.com/register/eventReg?oeidk=a07eg8v711o924e7de0&oseq=&c=&ch=")!)
        self.present(sfViewController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

