//
//  JCSectorViewController.swift
//  X-Trading Partner
//
//  Created by Jonathan Carnie on 30/11/2014.
//  Copyright (c) 2014 Jonathan Carnie. All rights reserved.
//

import UIKit

class JCSectorViewController: UITableViewController {

    var sectors:[JCSector] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        println("Loaded up correct view controller.")
        
        loadSectorData()
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    func loadSectorData(){
        sectors.removeAll(keepCapacity: true)
        
        let path = NSBundle.mainBundle().pathForResource("Sectors", ofType: "plist")
        
        let dict = NSDictionary(contentsOfFile: path!)
        
        var sectorlist = dict["Boron"] as Array<String>
        
        for var i = 0 ;i < sectorlist.count; i++ {
            println("Sector: \(sectorlist[i])")
        }
 
        
        //create a sector
//        var sect1 = JCSector()
//        sect1.sectorname = "Kingdom End"
//        sect1.race = "Boron"
//        sect1.stations = ["Alpha","Beta"]
//        
//        sectors.append(sect1)
//        
//        //create a sector
//        var sect2 = JCSector()
//        sect2.sectorname = "Queen's Space"
//        sect2.race = "Argon"
//        sect2.stations = ["Gamma","Delta"]
//        
//        sectors.append(sect2)
//        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
    
        let sector = sectors[indexPath.row] as JCSector

        cell.textLabel.text = sector.sectorname

        return cell as UITableViewCell
   }
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
