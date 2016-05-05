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
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
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
    
    @IBAction func cheeseButtonClick() {
        
    }

}
