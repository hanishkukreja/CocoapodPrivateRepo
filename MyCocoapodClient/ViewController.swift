//
//  ViewController.swift
//  MyCocoapodClient
//
//  Created by Hanish Kukreja on 02/11/23.
//

import UIKit
//import MyCocoapodLibrary

class ViewController: UIViewController {
    
//    let logger = Logger()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        logger.printHello()
//        readJSONFile()
//        let data = logger.readFileAndReturnJson()
//        print(data)
        
//        Bundle.allBundles.forEach { bundle in
//            print(bundle.bundleIdentifier)
//            print(bundle.bundlePath)
//        }
        
        
    }

    func readJSONFile() {
       do {
           let bundle = Bundle(identifier: "org.cocoapods.MyCocoapodLibrary")
           print(bundle)
           if let bundlePath = bundle?.path(forResource: "tokens-enbd", ofType: "json"),
              let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
             if let json = try JSONSerialization.jsonObject(with: jsonData, options: .mutableLeaves) as? [String: Any] {
                print("JSON: \(json)")
             } else {
                print("Given JSON is not a valid dictionary object.")
             }
          }
       } catch {
          print(error)
       }
    }
}

