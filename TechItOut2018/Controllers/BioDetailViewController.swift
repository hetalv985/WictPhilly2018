//
//  BioDetailViewController.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 6/17/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit
import WebKit

class BioDetailViewController: UIViewController {
    @IBOutlet weak var bioDetailWebView: WKWebView!

    var bioData: Bio = Bio()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let bundleUrl = URL(fileURLWithPath:Bundle.main.bundlePath)
        let profileDescriptionStr = "<div style='font-family:Brandon;font-size:32px'>"+bioData.profileDescription+"</div>"
        self.bioDetailWebView.loadHTMLString(profileDescriptionStr,baseURL: bundleUrl)
        self.navigationItem.title = bioData.name
        self.edgesForExtendedLayout = []
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
