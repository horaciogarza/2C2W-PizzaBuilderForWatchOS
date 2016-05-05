//
//  OptionsInterfaceController.swift
//  PizzaWatchOS
//
//  Created by Horacio Garza on 04/05/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import WatchKit
import Foundation


class OptionsInterfaceController: WKInterfaceController {

    
    @IBOutlet var sizePicker: WKInterfacePicker!
    @IBOutlet var labelSizeSelected: WKInterfaceLabel!
    
    var sizePickerItems = ["Chica","Mediana","Grande"]
    var selectedItem:String?
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    

    override func willActivate() {
        
        super.willActivate()
        let caption = "Tamaño"
        
        let itemChica = WKPickerItem();
        itemChica.caption = caption;
        itemChica.title = "Chica"
        
        let itemMediana = WKPickerItem();
        itemMediana.caption = caption
        itemMediana.title = "Mediana"
        
        let itemGrande = WKPickerItem();
        itemGrande.caption = caption
        itemGrande.title = "Grande"
        
        let items = [itemChica, itemMediana, itemGrande]
        
        sizePicker.setItems(items);
        
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        
        print("Selected: \(sizePickerItems[value])")
        selectedItem = sizePickerItems[value]
        
    }
    @IBAction func selectSize() {
        
        Pizza.sharedPizza.tamaño = selectedItem;
        labelSizeSelected.setHidden(false)
        labelSizeSelected.setText("\(selectedItem!) será")
    }

}
