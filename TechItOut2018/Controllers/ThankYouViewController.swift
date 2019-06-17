//
//  ThankYouViewController.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 7/4/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit

class ThankYouViewController: UIViewController {

    @IBOutlet weak var thanksTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.thanksTextView.text = "Very special thanks to these amazing members of WICT of Greater Philadelphia who contributed their many talents, and devoted countless hours of their time to help create and organize WICT Tech It Out 2019: Adreck McDonald, Brenda Belkin, Chelsea Badeau, Chelsey May, Daneen Baird, Erin McConchie, Laila Imam, Liz Levander, Mallika Krishnamoorthy, Mary Brocato, Michele Corsini, Ruchita Patel, Rajashree Srivatsan, Sonya Patton, Teresa Talese."
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
