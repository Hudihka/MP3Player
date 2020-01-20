//
//  MusicStruct.swift
//  MP3Player
//
//  Created by Username on 17.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import Foundation
import UIKit
import MediaPlayer

typealias TuplSongInfo = (title: String, artist: String, image: UIImage)

struct MusicStruct {

    private var asset: AVAsset?

    private var name: String = "Name"

    init(name: String) {

        self.name = name

        if let url = name.getURL(ofType: "mp3") {
            let player = AVPlayerItem(url: url)
            self.asset = player.asset
//            self.duration = player.asset.duration
//

        }

    }


    var content: TuplSongInfo {

        let image = UIImage(named: "placeholder") ?? UIImage()

        var tupl: TuplSongInfo = (title: self.name, artist: "Неизвестный исполнитель", image: image)

        guard let metadata = asset?.metadata else {
            return tupl
        }

        for item in metadata {
            switch item.commonKey {
            case .commonKeyTitle?:

                if let text = item.stringValue {
                    tupl.title = text
                }

            case .commonKeyArtist?:
                if let text = item.stringValue {
                    tupl.artist = text
                }
            case .commonKeyArtwork?:
                if let data = item.dataValue, let image = UIImage(data: data) {
                    tupl.image = image
                }
            case .none: break
            default: break
            }
        }

        return tupl

    }

    var duration: String{

        if let duration = asset?.duration{
            return duration.stringFormat
        }

        return "--:--"
    }
}

extension MusicStruct: Hashable{

    static func == (lhs: MusicStruct, rhs: MusicStruct) -> Bool {
        if lhs.asset == rhs.asset, lhs.name == rhs.name {
            return true
        }

        return false
    }

//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//        hasher.combine(title)
//        hasher.combine(key)
//    }

}

extension CMTime{

    var stringFormat: String{

        let count = Int(CMTimeGetSeconds(self))

        let countSeconds: String = (count % 60).timeText
        let countMin: String = (count / 60).timeText

        return "\(countMin):\(countSeconds)"
    }
}

extension Int{

    var timeText: String{
        return self > 9 ? "\(self)" : "0\(self)"
    }


}
