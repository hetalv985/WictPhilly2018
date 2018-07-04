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
        self.thanksTextView.text = "Very special thanks to these amazing members of WICT of Greater Philadelphia who contributed their many talents, and devoted countless hours of their time to help create and organize WICT Tech It Out 2018: Allison Sims, Brenda Belkin, Chelsea Badeau, Chelsey May, Eileen Murphy, Emily Nikoo, Erin Kelly, Jeanne Ciampa, Jill Formichella, Laila Imam, Lauren Blevins, Manasa Kashi, Marichelle Rocha, Melissa Doogan, Nancy Rieti, Nidhi Desai, Stephanie Higgins. And thanks to TechWomen Philly.  \n\nIn this Age of Voice Control--print is still important. The Greater Philadelphia Chapter of WICT would like to recognize our amazing in-kind designer Signature for the beautiful branding and design work in support of Tech It Out 2018."
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
