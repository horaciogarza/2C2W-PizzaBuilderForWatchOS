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
    @IBOutlet var pimientoSwitch: WKInterfaceSwitch!
    @IBOutlet var piñaSwitch: WKInterfaceSwitch!
    
    
    let MAX_INGREDIENTS = 5;
    var countOfIngredients = 0
    
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
    
    
    
    func showPopup(){
        
        
        
        let action3 = WKAlertAction(title: "Cancel", style: .Cancel) {}
        
        presentAlertControllerWithTitle( "Limite excedido",
                                         message: "Haz superado el límite de ingredientes",
                                        preferredStyle: WKAlertControllerStyle.Alert,
                                        actions: [action3])
        
    }
    //MARK: IBOutlets
    @IBAction func jamonChanged(value: Bool) {
        
        if value {
            
            if countOfIngredients < MAX_INGREDIENTS {
                print(Pizza.sharedPizza.ingredientes["jamon"]!)
                Pizza.sharedPizza.ingredientes["jamon"] = value
                print(Pizza.sharedPizza.ingredientes["jamon"]!)
                countOfIngredients = countOfIngredients + 1
            }else{
                showPopup()
            }
        }else{
            countOfIngredients = countOfIngredients - 1
        }
        
        
        
        
    }
    
    @IBAction func pepperoniChanged(value: Bool) {
        
        if value {
            if (countOfIngredients < MAX_INGREDIENTS) {
                countOfIngredients = countOfIngredients + 1
                print(Pizza.sharedPizza.ingredientes["pepperoni"]!)
                Pizza.sharedPizza.ingredientes["pepperoni"] = value
                print(Pizza.sharedPizza.ingredientes["pepperoni"]!)
            }else{
                pepperoniSwitch.setOn(false)
                showPopup()
            }
        }else{
            countOfIngredients = countOfIngredients - 1
        }
        
        
    }
    
    @IBAction func pavoChanged(value: Bool) {
        
        if value {
            if countOfIngredients < MAX_INGREDIENTS {
                countOfIngredients = countOfIngredients + 1
                print(Pizza.sharedPizza.ingredientes["pavo"]!)
                Pizza.sharedPizza.ingredientes["pavo"] = value
                print(Pizza.sharedPizza.ingredientes["pavo"]!)
                
            }else{
                pavoSwitch.setOn(false)
                showPopup()
            }
        }else{
            countOfIngredients = countOfIngredients - 1
        }
        
        
    }
    
    @IBAction func salchichaChanged(value: Bool) {
        
        if value {
            if countOfIngredients < MAX_INGREDIENTS {
                countOfIngredients = countOfIngredients + 1
                print(Pizza.sharedPizza.ingredientes["salchicha"]!)
                Pizza.sharedPizza.ingredientes["salchicha"] = value
                print(Pizza.sharedPizza.ingredientes["salchicha"]!)
                
            }else{
                salchichaSwitch.setOn(false)
                showPopup()
            }
        }else{
            countOfIngredients = countOfIngredients - 1
        }
        
        
    }
    
    
    @IBAction func aceitunaChanged(value: Bool) {
        
        
        if value {
            if countOfIngredients < MAX_INGREDIENTS {
                countOfIngredients = countOfIngredients + 1
                print(Pizza.sharedPizza.ingredientes["aceituna"]!)
                Pizza.sharedPizza.ingredientes["aceituna"] = value
                print(Pizza.sharedPizza.ingredientes["aceituna"]!)
                
            }else{
                aceitunaSwitch.setOn(false)
                showPopup()
            }
        }else{
            countOfIngredients = countOfIngredients - 1
        }
        
        
    }
    
    @IBAction func cebollaChanged(value: Bool) {
        
        
        if value {
            if countOfIngredients < MAX_INGREDIENTS {
                countOfIngredients = countOfIngredients + 1
                print(Pizza.sharedPizza.ingredientes["cebolla"]!)
                Pizza.sharedPizza.ingredientes["cebolla"] = value
                print(Pizza.sharedPizza.ingredientes["cebolla"]!)
            }else{
                cebollaSwitch.setOn(false)
                showPopup()
            }
        }else{
            countOfIngredients = countOfIngredients - 1
        }
        
        
        
    }
    
    @IBAction func pimientoChanged(value: Bool) {
        
        
        if value {
            if countOfIngredients < MAX_INGREDIENTS {
                countOfIngredients = countOfIngredients + 1
                print(Pizza.sharedPizza.ingredientes["pimiento"]!)
                Pizza.sharedPizza.ingredientes["pimiento"] = value
                print(Pizza.sharedPizza.ingredientes["pimiento"]!)
            }else{
                pimientoSwitch.setOn(false)
                showPopup()
            }
        }else{
            countOfIngredients = countOfIngredients - 1
        }
        
        
        
    }
    
    @IBAction func piñaChanged(value: Bool) {
        
        if value {
            if countOfIngredients < MAX_INGREDIENTS {
                countOfIngredients = countOfIngredients + 1
                print(Pizza.sharedPizza.ingredientes["piña"]!)
                Pizza.sharedPizza.ingredientes["piña"] = value
                print(Pizza.sharedPizza.ingredientes["piña"]!)
            }else{
                piñaSwitch.setOn(false)
                showPopup()
            }
        }else{
            countOfIngredients = countOfIngredients - 1
        }
        
        
        
    }
    
    
    
    @IBAction func finishedButton() {
        
        let action3 = WKAlertAction(title: "Cancel", style: .Cancel) {}
        
        
        presentAlertControllerWithTitle( "Gracias",
                                         message: "Tus ingredientes han sido seleccionados, favor de regresar al menu",
                                         preferredStyle: WKAlertControllerStyle.Alert,
                                         actions: [action3])

    }
    
    
}
