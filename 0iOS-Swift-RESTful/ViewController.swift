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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mainView = UIView()
        
        /*
        let myPathUrlIs:Optional<String> = "https ://pizzaria2.000webhostapp.com/android_connect/get_all_products.php"
        let url = NSURL(fileURLWithPath: myPathUrlIs!)
        let request = NSURLRequest(URL: url)
        let connection: NSURLConnection = NSURLConnection(request: request, delegate: self, startImmediately: false)!
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) {(response, data, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: NSUTF8StringEncoding)!)
            let stringToAlert:String? = (String(data: data, encoding: NSUTF8StringEncoding)!)
            let showAlertForMe = UIAlertView(title: "iOS REST", message: stringToAlert!, delegate: nil, cancelButtonTitle: "Cancelar")
            showAlertForMe.show()
        }
        */
        //https: //stackoverflow.com/questions/32189365/nsurlsession-in-swift-2-0
        NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://heyhttp.org/me.json")!, completionHandler: { (data, response, error) -> Void in
            print("sss")
            let showAlertForMe = UIAlertView(title: "iOS REST", message: "datTaskWithURL", delegate: nil, cancelButtonTitle: "Cancelar")
            showAlertForMe.show()
        }).resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

