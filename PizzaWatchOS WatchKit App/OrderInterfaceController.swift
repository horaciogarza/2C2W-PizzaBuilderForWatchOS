//
//  OrderInterfaceController.swift
//  PizzaWatchOS
//
//  Created by Horacio Garza on 04/09/16.
//  Copyright © 2016 Horacio Garza. All rights reserved.
//

import WatchKit
import Foundation


class OrderInterfaceController: WKInterfaceController {

    @IBOutlet var timerView: WKInterfaceTimer!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
        //timerView.setDate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
