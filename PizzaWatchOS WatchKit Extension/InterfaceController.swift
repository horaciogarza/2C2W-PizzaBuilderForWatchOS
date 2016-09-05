//
//  InterfaceController.swift
//  PizzaWatchOS WatchKit Extension
//
//  Created by Horacio Garza on 04/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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
    @IBAction func orderClick() {
        
        if let size = Pizza.sharedPizza.tamaño, cheese = Pizza.sharedPizza.queso,
            bread = Pizza.sharedPizza.masa{
            
            var countOfIngredients = 0
            var ingredientsString:String = ""
            for key in Pizza.sharedPizza.ingredientes.allKeys{
                
                if (Pizza.sharedPizza.ingredientes[key as! String] != nil){
                    countOfIngredients = countOfIngredients + 1
                }
                ingredientsString += "\(key), "
            }
            
            let summary = "Tamaño: \(size), \nQueso: \(cheese)\nMasa: \(bread)\nIngredientes: \(ingredientsString)"
            
            if !(countOfIngredients > 0) {
                showError()
            }else{
                
                let action3 = WKAlertAction(title: "Aceptar", style: WKAlertActionStyle.Default) {
                    
                    print("prro")
                    self.presentControllerWithName("orderScreen", context: nil)
                    
                }
                
                
                
                presentAlertControllerWithTitle( "Limite excedido",
                                                 message: summary,
                                                 preferredStyle: WKAlertControllerStyle.Alert,
                                                 actions: [action3])
            }
            
            
            
        }else{
            
            showError()
        }
        
    }
    
    func showError(){
        let action3 = WKAlertAction(title: "Aceptar", style: WKAlertActionStyle.Default) {}
        
        presentAlertControllerWithTitle( "Limite excedido",
                                         message: "Aún te falta por completar de elegir algunas cosas, mejor checa bien",
                                         preferredStyle: WKAlertControllerStyle.Alert,
                                         actions: [action3])
    }
    
}
