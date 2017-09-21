//
//  ViewController.swift
//  LightweightReactiveExample
//
//  Created by hidemune on 9/22/17.
//  Copyright © 2017 Hidemune Takahashi. All rights reserved.
//

import UIKit
import LightweightReactive

class ViewController: UIViewController {

    @objc dynamic var reactTest: String = "Initial Value"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LightweightReactive.observer.startObserving(source: self, keyPath: #keyPath(ViewController.reactTest), options: [.new, .old], context: nil) { (keyPath, object, changes, context) in
            print("reacted!")
        }
        reactTest = "Lightweight Reactive"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

