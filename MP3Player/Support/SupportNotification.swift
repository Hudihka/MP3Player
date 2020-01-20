//
//  SupportNotification.swift
//  GinzaGO
//
//  Created by Username on 31.01.2019.
//  Copyright © 2019 ITMegastar. All rights reserved.
//

import UIKit


enum NotificationName: String{

    case finishTrack           = "finishTrack"


    var nameNotific: NSNotification.Name {
        return NSNotification.Name(self.rawValue)
    }

}

class SupportNotification: NSObject {

    static func notific(_ name: NotificationName) {
        NotificationCenter.default.post(name: name.nameNotific, object: nil)
    }

    static func notific(_ name: NotificationName, userInfo: [String: Any]) {
        NotificationCenter.default.post(name: name.nameNotific, object: nil, userInfo: userInfo)
    }


}
