//
//  File.swift
//  0iOS-Swift-RESTful
//
//  Created by macOS on 23/07/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import Foundation

class PostForData {
    // the completion closure signature is (NSString) -> ()
    func forData(completion: (NSString) -> ()) {
        if let url = NSURL(string: "http://210.61.209.194:8088/SmarttvWebServiceTopmsoApi/GetReadlist") {
            let request = NSMutableURLRequest( URL: url)
            request.HTTPMethod = "POST"
            let postString : String = "uid=59"
            request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request) {
                data, response, error in
                if let data = data,
                    jsonString = NSString(data: data, encoding: NSUTF8StringEncoding)
                    where error == nil {
                        completion(jsonString)
                } else {
                    print("error=\(error!.localizedDescription)")
                }
            }
            task.resume()
        }
    }
}