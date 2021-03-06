//
//  ControlsViewContoller.swift
//  SporthEditor
//
//  Created by Kanstantsin Linou on 7/14/16.
//  Copyright © 2016 AudioKit. All rights reserved.
//

import Cocoa
import AudioKit

class ControlsViewContoller: NSViewController {
    let vc = NSApplication.sharedApplication().windows.first!.contentViewController as! ViewController
    
    @IBOutlet var slider1: NSSlider!
    @IBOutlet var slider2: NSSlider!
    @IBOutlet var slider3: NSSlider!
    @IBOutlet var slider4: NSSlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    @IBAction func trigger1(sender: NSButton) {
        print("triggering 1")
        vc.brain.generator?.trigger(0)
    }
    
    @IBAction func trigger2(sender: NSButton) {
        print("triggering 2")
        vc.brain.generator?.trigger(1)
    }
    
    @IBAction func trigger3(sender: NSButton) {
        print("triggering 3")
        vc.brain.generator?.trigger(2)
    }
    
    @IBAction func trigger4(sender: NSButton) {
        print("triggering 4")
        vc.brain.generator?.trigger(3)
    }
    
    @IBAction func toggleGate(sender: NSButton) {
        guard let identifier = sender.identifier, let index = Int(identifier) else {
            NSLog(Constants.Error.Identifier)
            return
        }
        if (vc.brain.generator?.parameters[index] != 1) {
            vc.brain.generator?.parameters[index] = 1
        } else if (vc.brain.generator?.parameters[index] != 0) {
            vc.brain.generator?.parameters[index] = 0
        }
    }
    
    @IBAction func updateParameter1(sender: NSSlider) {
        print("value 1 = \(sender.doubleValue)")
        vc.brain.generator?.parameters[0] = Double(sender.doubleValue)
    }
    @IBAction func updateParameter2(sender: NSSlider) {
        print("value 2 = \(sender.doubleValue)")
        vc.brain.generator?.parameters[1] = Double(sender.doubleValue)
    }
    @IBAction func updateParameter3(sender: NSSlider) {
        print("value 3 = \(sender.doubleValue)")
        vc.brain.generator?.parameters[2] = Double(sender.doubleValue)
    }
    @IBAction func updateParameter4(sender: NSSlider) {
        print("value 4 = \(sender.doubleValue)")
        vc.brain.generator?.parameters[3] = Double(sender.doubleValue)
    }
}
