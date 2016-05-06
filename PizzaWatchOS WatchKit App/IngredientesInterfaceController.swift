//
//  IngredientesInterfaceController.swift
//  PizzaWatchOS
//
//  Created by Horacio Garza on 06/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {

    @IBOutlet var cebollaSwitch: WKInterfaceSwitch!
    @IBOutlet var aceitunaSwitch: WKInterfaceSwitch!
    @IBOutlet var salchichaSwitch: WKInterfaceSwitch!
    @IBOutlet var pavoSwitch: WKInterfaceSwitch!
    @IBOutlet var pepperoniSwitch: WKInterfaceSwitch!
    @IBOutlet var jamonSwitch: WKInterfaceSwitch!
    let maxIngredients = 5;
    var countOfIngredients:Int? = 0
  
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        //var switches = [jamonSwitch, pepperoniSwitch, pavoSwitch, salchichaSwitch, aceitunaSwitch, cebollaSwitch]
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func jamonSelected(value: Bool) {
        
        if(countOfIngredients! != maxIngredients){
            pushControllerWithName("errorController", context: nil)
            countOfIngredients! += 1
        }else if(!value){
            countOfIngredients! -= 1
        }else{
            jamonSwitch.setOn(false)
        }
        
    }
}
