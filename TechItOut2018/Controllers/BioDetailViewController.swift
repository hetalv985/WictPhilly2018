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

    var bioData: Bio = Bio()
    
    @IBOutlet weak var profileDesignation: UILabel!
    @IBOutlet weak var profileDescTextView: UITextView!
    @IBOutlet weak var profileImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = bioData.name
        self.profileDescTextView.text = bioData.profileDescription
        self.profileImgView.image = UIImage.init(named: bioData.imageName)
        self.profileDesignation.text = bioData.designation
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
