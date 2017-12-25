//
//  Speaker.swift
//  Rx_start
//
//  Created by caodedi on 2017/12/22.
//  Copyright © 2017年 caodedi. All rights reserved.
//

import Foundation
import UIKit

struct Speaker {
    let name: String
    let twitterHandle: String
    var image: UIImage?
    
    init(name: String, twitterHandle: String) {
        self.name = name
        self.twitterHandle = twitterHandle
        
        image = UIImage(named: name.replacingOccurrences(of: " ", with: ""))
    }

}

extension Speaker: CustomDebugStringConvertible {
    var debugDescription: String {
        return "\(name) \(twitterHandle)"
    }
}
