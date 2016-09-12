//
//  CheeseInterfaceController.swift
//  PizzaWatchOS
//
//  Created by Horacio Garza on 04/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import WatchKit
import Foundation


class CheeseInterfaceController: WKInterfaceController {

    @IBOutlet var cheeseLabel: WKInterfaceLabel!
    @IBOutlet var cheesePicker: WKInterfacePicker!
    
    var itemsOnPicker:[WKPickerItem]?
    let cheeseCaption = "Tipo de Queso"
    let cheesePickerItems = ["Mozarela", "Cheddar", "Parmesano", "Sin Queso"]
    var selectedOnPicker:String = "Mozarela"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        Pizza.sharedPizza.cheeseActivate = true
        //Seleccionar el tipo de queso: mozarela, cheddar, parmesano, sin queso
        
        let itemMozarela = WKPickerItem()
        itemMozarela.caption = cheeseCaption
        itemMozarela.title = "Mozarela"
        
        let itemCheddar = WKPickerItem()
        itemCheddar.caption = cheeseCaption
        itemCheddar.title = "Cheddar"
        
        let itemParmesano = WKPickerItem()
        itemParmesano.caption = cheeseCaption
        itemParmesano.title = "Parmesano"
        
        let itemSinQueso = WKPickerItem()
        itemSinQueso.caption = cheeseCaption
        itemSinQueso.title = "Sin Queso"
        
        itemsOnPicker = [itemMozarela, itemCheddar, itemParmesano, itemSinQueso]
        cheesePicker.setItems(itemsOnPicker)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func selectedOnPicker(value: Int) {
        selectedOnPicker = itemsOnPicker![value].title!
        
    }
    
    @IBAction func cheeseButtonClick() {
        
        Pizza.sharedPizza.queso = selectedOnPicker;
        cheeseLabel.setText(selectedOnPicker + " seleccionado")
        
        
    }

    @IBAction func onClickButton() {
        
        
            let action3 = WKAlertAction(title: "Cancel", style: .Cancel) {}
            
            
            presentAlertControllerWithTitle( "Gracias",
                                             message: "Tu queso ha sido elegido, favor de regresar al menu",
                                             preferredStyle: WKAlertControllerStyle.Alert,
                                             actions: [action3])
            
        
    }
    
    @IBAction func changedValue(value: Int) {
        
        Pizza.sharedPizza.queso = cheesePickerItems[value]
    }
    
}
