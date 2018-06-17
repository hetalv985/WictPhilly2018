//
//  BiosViewController.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 4/15/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit

class BiosViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let bios = Bios()
    var numOfRows = 0
    let bioPerRow = 2
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return numOfRows
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if numOfRows == section+1 {
            if bios.bios.count % bioPerRow == 0 {
                return bioPerRow
            }
            else {
                return 1
            }
        }
        return bioPerRow
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "biosCell", for: indexPath)
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        let imgView = cell.viewWithTag(1) as! UIImageView
        let nameLabel = cell.viewWithTag(2) as! UILabel
        let positionLabel = cell.viewWithTag(3) as! UILabel
        
        let bio = bios.bios[indexPath.section*2+indexPath.row]
        nameLabel.text = bio.name
        positionLabel.text = bio.designation
        
        imgView.layer.cornerRadius = 28
        imgView.layer.masksToBounds = true
        imgView.image = UIImage.init(named: bio.imageName)
        
        return cell
    }
    

    @IBOutlet weak var biosCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bios.readBios()
        numOfRows = Int(ceil(Double(bios.bios.count/bioPerRow)))
        
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
