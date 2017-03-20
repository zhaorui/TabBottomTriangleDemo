//
//  WelcomeVC.swift
//  TabBottomTriangleDemo
//
//  Created by 赵睿 on 19/03/2017.
//  Copyright © 2017 com.homebrew.zhaorui. All rights reserved.
//

import Cocoa

//FIXME: |main_windwo_controller| should be in AppDelegate
var main_window_controller : NSWindowController?

class WelcomeVC: NSViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do view setup here.
  }
  
  @IBAction func login(_ sender: NSButton) {
    let storyboard = NSStoryboard(name: "Main", bundle: Bundle.main)
    let main_wc = storyboard.instantiateController(withIdentifier: "MainWC") as! NSWindowController
    main_wc.showWindow(nil)
    main_window_controller = main_wc
    
    
    
    self.view.window?.windowController?.close()
  }
  
  override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
    if segue.identifier == "go_to_main_window" {
      print("go to main window controller")
    }
  }
  
  
}

class WelcomeToMainSegue: NSStoryboardSegue {
  override func perform() {
    
    if main_window_controller == nil {
      main_window_controller = self.destinationController as? NSWindowController
    }
    
    // Good place to test orderBack, orderFront, orderOut, and showWindwo
    if main_window_controller?.window?.isVisible ?? false {
      main_window_controller?.window?.orderOut(nil)
    } else {
      main_window_controller?.showWindow(nil)
      print("main window: \(NSApp.mainWindow)")
      print("key windwo: \(NSApp.keyWindow)")
      print("main_window_controller.window: \(main_window_controller?.window)")
    }
    
  }
}
