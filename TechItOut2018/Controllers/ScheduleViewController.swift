//
//  ScheduleViewController.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 4/14/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit
import SafariServices

class ScheduleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var scheduleTableView: UITableView!
    let eventSchedule = Schedule()
    
    @IBAction func navigateToRegister(_ sender: Any) {
        let sfViewController = SFSafariViewController(url: URL(string: "https://events.r20.constantcontact.com/register/eventReg?oeidk=a07ef910bkua2d2fc1c&oseq=&c=&ch=")!)
        self.present(sfViewController, animated: true, completion: nil)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return eventSchedule.scheduleItems.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scheduleCell")
        let scheduleItem = self.eventSchedule.scheduleItems[indexPath.section]
        
        let titleLbl = cell?.viewWithTag(1) as! UILabel
        let subTitleLbl = cell?.viewWithTag(2) as! UILabel
        let speakersLbl = cell?.viewWithTag(3) as! UILabel
        let locationLbl = cell?.viewWithTag(4) as! UILabel
        
            titleLbl.text = scheduleItem.title
            subTitleLbl.text = scheduleItem.subTitle
            speakersLbl.text = scheduleItem.speakers
            locationLbl.text = scheduleItem.location
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableCell(withIdentifier: "Header")
        let scheduleItem = self.eventSchedule.scheduleItems[section]
        view?.textLabel?.text = scheduleItem.label + "\n" + scheduleItem.time
        return view!
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        eventSchedule.readSchedule()

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
