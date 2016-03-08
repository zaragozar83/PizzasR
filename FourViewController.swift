//
//  FourViewController.swift
//  PizzasR
//
//  Created by Ricardo Zaragoza Solís on 03/03/16.
//  Copyright © 2016 Ricardo Zaragoza Solís. All rights reserved.
//

import UIKit

class FourViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var ingredientes = ["jamón", "pepperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa", "jalapeño", "carne", "frijoles"]
    
    @IBOutlet weak var tableIngredientes: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableIngredientes.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableIngredientes.dataSource = self
        self.tableIngredientes.allowsMultipleSelection = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ingredientes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableIngredientes
            .dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = self.ingredientes[indexPath.row]
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
