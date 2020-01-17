//
//  String.swift
//  MP3Player
//
//  Created by Username on 17.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import Foundation


extension String {

    func remove(suffix: String) -> String?{

        if self.hasSuffix(suffix) {
            let str = self.prefix(self.count - suffix.count)
            return String(str)
        }

        return nil

    }

    func getURL(ofType: String) -> URL?{

        if let path = Bundle.main.path(forResource: self, ofType: ofType) {
            return URL(fileURLWithPath: path)
        }

        return nil
    }



}
