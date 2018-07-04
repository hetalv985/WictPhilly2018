//
//  LetterViewController.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 6/27/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit

class LetterViewController: UIViewController, EFImageViewZoomDelegate {

    @IBOutlet var imgViewZoom: EFImageViewZoom!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.imgViewZoom._delegate = self
//        self.imgViewZoom.image = UIImage(named: "mbrennan_letter")
//        self.imgViewZoom.contentMode = .left
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
