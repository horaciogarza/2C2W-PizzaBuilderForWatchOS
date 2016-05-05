//
//  MasaInterfaceController.swift
//  PizzaWatchOS
//
//  Created by Horacio Garza on 04/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {

    @IBOutlet var masaPicker: WKInterfacePicker!
    
    @IBOutlet var labelMasa: WKInterfaceLabel!
    var masaSeleccionada:String?
    var sizePickerItems = ["Delgada","Gruesa","Crujiente"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let captionForPicker = "Tipo de Masa"
        
        let itemDelgada:WKPickerItem = WKPickerItem()
        itemDelgada.caption = captionForPicker;
        itemDelgada.title = "Delgada"
        
        let itemGruesa:WKPickerItem = WKPickerItem()
        itemGruesa.caption = captionForPicker;
        itemGruesa.title = "Gruesa"
        
        let itemCrujiente:WKPickerItem = WKPickerItem()
        itemCrujiente.caption = captionForPicker;
        itemCrujiente.title = "Crujiente"
        
        let items = [itemDelgada, itemGruesa, itemCrujiente]
        masaPicker.setItems(items)
        
        
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func masaSeleccionadaPicker(value: Int) {
        print("Selección: \(sizePickerItems[value])")
        masaSeleccionada = sizePickerItems[value]
        
        
    }
    @IBAction func masaSeleccionadaOnClick() {
        Pizza.sharedPizza.masa = masaSeleccionada;
        labelMasa.setText("\(masaSeleccionada!) será")
        labelMasa.setHidden(false)
    }
   
    
}
