//
//  SponsorsViewController.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 4/15/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit
import SafariServices

class SponsorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let sponsors = Sponsors()
     @IBOutlet weak var sponsorsTableView: UITableView!
    
    @IBAction func navigateToRegister(_ sender: Any) {
        let sfViewController = SFSafariViewController(url: URL(string: "https://events.r20.constantcontact.com/register/eventReg?oeidk=a07eg8v711o924e7de0&oseq=&c=&ch=")!)
        self.present(sfViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sponsorsTableView.rowHeight = UITableViewAutomaticDimension
        sponsorsTableView.estimatedRowHeight = 200.0
        sponsors.readSponsors()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sponsors.sponsors.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sponsorsCell", for: indexPath)
        let sponsorItem = self.sponsors.sponsors[indexPath.section]
        let logos = sponsorItem.logos
        let stackView = cell.viewWithTag(99) as! UIStackView
        
        let subViews = stackView.subviews
        for view in subViews {
            view.removeFromSuperview()
        }

        for logo in logos {
            let img = UIImage(named: logo)
            let imgView = UIImageView(image: img)
            imgView.translatesAutoresizingMaskIntoConstraints = false
            imgView.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
            imgView.widthAnchor.constraint(equalToConstant: 40.0).isActive = true
            imgView.contentMode = .scaleAspectFit
            stackView.addArrangedSubview(imgView)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableCell(withIdentifier: "Header")
        let sponsorItem = self.sponsors.sponsors[section]
        view?.textLabel?.text = sponsorItem.title
        return view!
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }

}
