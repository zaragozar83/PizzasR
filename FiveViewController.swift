//
//  FiveViewController.swift
//  PizzasR
//
//  Created by Ricardo Zaragoza Solís on 03/03/16.
//  Copyright © 2016 Ricardo Zaragoza Solís. All rights reserved.
//

import UIKit

class FiveViewController: UIViewController {

    @IBOutlet weak var lblSize: UILabel!
    @IBOutlet weak var lblMasa: UILabel!
    @IBOutlet weak var lblQueso: UILabel!
    @IBOutlet weak var lblIngredientes: UILabel!
    
    var sizePizza = ""
    var tipoMasa = ""
    var tipoQueso = ""
    var ingredientes = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        lblSize.text = sizePizza
        lblMasa.text = tipoMasa
        lblQueso.text = tipoQueso
        lblIngredientes.text = ingredientes
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
