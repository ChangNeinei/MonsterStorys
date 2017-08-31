//
//  MonsterListTableViewController.swift
//  MonsterStorys
//
//  Created by Weiling Chang on 31/08/2017.
//  Copyright © 2017 Lynne. All rights reserved.
//

import UIKit

class MonsterListTableViewController: UITableViewController {
    
    let monsters = [Monster(name: "James P. Sullivan", intro: "Sulley's best friend and sidekick is Mike Wazowski. When he is first seen, Sulley is the top scarer at Monsters, Inc., responsible for generating the majority of scares that provide power for the city of Monstropolis." ), Monster(name: "Mike Wazowski", intro: "Mike Wazowski is a proud and confident monster, partly defined by his friendship with James P. Sullivan, whom he works with as his Scaring Assistant."), Monster(name: "Randall Boggs", intro: "Randall is seen as a young and pimple-faced teenager. He sometimes wears his purple glasses but stops wearing them near the end of the film."), Monster(name: "Don Carlton", intro: "He is a mature student returning to college to follow a dream to study scaring."), Monster(name: "Scott Squibbles", intro: "He is a five-eyed jelly-like monster."), Monster(name: "Brock Pearson", intro: "A massive birdlike purple monster with antelope-like horns, he is the vice-president of the Greek Council."), Monster(name: "Professor Knight", intro: "He is the Scaring 101 professor at the School of Scaring at Monsters University.")]
    let humans = [Monster(name: "Boo", intro: "Boo is a 2-year-old human child who has escaped from her room from which Randall intended to kidnap her.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let controller = segue.destination as! MonsterViewController
        let number = tableView.indexPathForSelectedRow!.row
        if tableView.indexPathForSelectedRow!.section == 0 {
            controller.character = monsters[number]
        } else {
            controller.character = humans[number]
        }
    }
    

}
