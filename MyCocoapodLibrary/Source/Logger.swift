//
//  Logger.swift
//  MyCocoapodLibrary
//
//  Created by Hanish Kukreja on 02/11/23.
//

import Foundation

public class Logger {
    
    public init() {}
    
    public func printHello() {
        print("print hello")
    }
    
    public func printBye() {
        print("print bye")
        print(readFileAndReturnJson())
    }
    
    public func readFileAndReturnJson() -> [String : Any] {
        var finalJson = [String : Any]()
        do {
            print("reading json")
            let bundle = Bundle(identifier: "org.cocoapods.MyCocoapodLibrary")
            let bundle1 = Bundle(for: Logger.self)
            if let bundlePath = Bundle.main.path(forResource: "tokens-ei", ofType: "json"),
           let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
              if let json = try JSONSerialization.jsonObject(with: jsonData, options: .mutableLeaves) as? [String: Any] {
                  finalJson = json
                 print("JSON: \(json)")
              } else {
                 print("Given JSON is not a valid dictionary object.")
              }
           }
        } catch {
           print(error)
        }
        
        return finalJson
    }
}
