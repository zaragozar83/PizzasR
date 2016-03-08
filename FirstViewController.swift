//
//  FirstViewController.swift
//  PizzasR
//
//  Created by Ricardo Zaragoza Solís on 03/03/16.
//  Copyright © 2016 Ricardo Zaragoza Solís. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var sizePizzas = ["chica", "mediana", "grande"]
    
    @IBOutlet weak var tableSizePizza: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableSizePizza.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableSizePizza.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sizePizzas.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableSizePizza
        .dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = self.sizePizzas[indexPath.row]
        
        return cell
    }
}

