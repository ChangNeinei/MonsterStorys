//
//  MonsterViewController.swift
//  MonsterStorys
//
//  Created by Weiling Chang on 31/08/2017.
//  Copyright © 2017 Lynne. All rights reserved.
//

import UIKit

class MonsterViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var monsterImageView: UIImageView!
    @IBOutlet weak var monsterLabel: UILabel!
    
    var character = Monster(name: "Someone", intro: "He is a monster")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = character.name
        monsterImageView.image = UIImage(named: character.name)
        monsterLabel.text = character.intro
        
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
