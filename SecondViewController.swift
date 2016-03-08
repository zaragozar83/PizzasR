//
//  SecondViewController.swift
//  PizzasR
//
//  Created by Ricardo Zaragoza Solís on 03/03/16.
//  Copyright © 2016 Ricardo Zaragoza Solís. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tipoMasa = ["delgada", "crujiente", "gruesa"]
    
    @IBOutlet weak var tableTipoMasa: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableTipoMasa.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableTipoMasa.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tipoMasa.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableTipoMasa
            .dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = self.tipoMasa[indexPath.row]
        
        return cell
    }
}

