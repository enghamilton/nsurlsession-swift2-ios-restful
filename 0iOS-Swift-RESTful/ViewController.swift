//
//  ViewController.swift
//  0iOS-Swift-RESTful
//
//  Created by macOS on 18/07/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIView?
    
    @IBOutlet weak var myTextview: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mainView = UIView()

       //https: //stackoverflow.com/questions/32189365/nsurlsession-in-swift-2-0
        //https: //stackoverflow.com/questions/30128012
        
        //http: //heyhttp.org/me.json
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://pizzaria2.000webhostapp.com/android_connect/get_all_products.php")!, completionHandler: {
            (data, response, error) -> Void in
            
            var dataString:String = String(NSString(data: data!, encoding: NSUTF8StringEncoding))
            dispatch_async(dispatch_get_main_queue()){
                self.myTextview.text = dataString
            }
            
            do {
                var jsonData = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as! NSArray
                
                // Do Stuff
            } catch {
                // handle error
            }
            
        }).resume()
        
        func myTextView(){
            let myAlert = UIAlertView(title: "iOS RESTful", message: "Works !", delegate: nil, cancelButtonTitle: "cancelar")
            myAlert.show()
        }
        /*
        let pfd = PostForData()
        
        // you call the method with a trailing closure
        pfd.forData { jsonString in
            // and here you get the "returned" value from the asynchronous task
            print(jsonString)
            let myAlert = UIAlertView(title: "iOS RESTful", message: jsonString as String, delegate: nil, cancelButtonTitle: "cancelar")
            myAlert.show()
        }
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

