//
//  LocateViewController.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 4/15/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit
import SafariServices

class LocateViewController: UIViewController {

    @IBAction func navigateToRegister(_ sender: Any) {
        let sfViewController = SFSafariViewController(url: URL(string: "https://events.r20.constantcontact.com/register/eventReg?oeidk=a07ef910bkua2d2fc1c&oseq=&c=&ch=")!)
        self.present(sfViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
