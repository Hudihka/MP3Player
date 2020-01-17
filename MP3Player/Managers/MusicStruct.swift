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

struct MusicStruct {
    var title: String    = "Name"  // название трека
    var subTitle: String = "Last Name"
    var album: String    = "Album"
    var artist: String   = "Artist"

    var imageAlbums: UIImage? = UIImage(named: "placeholder")

    var lenghtTrack = "00:00"

    init(url: URL) {

        let player = AVPlayerItem(url: url)
        let metadata = player.asset.metadata


        for item in metadata {
            switch item.commonKey {
            case .commonKeyTitle?:
                if let text = item.stringValue {
                    title = text
                }
            case .commonKeyType?:
                if let text = item.stringValue {
                    subTitle = text
                }
            case .commonKeyAlbumName?:
                if let text = item.stringValue {
                    album = text
                }
            case .commonKeyArtist?:
                if let text = item.stringValue {
                    artist = text
                }
            case .commonKeyArtwork?:
                ///

                if let data = item.dataValue{
                    print("есть дата")
                }

//                if let data = item.dataValue, let image = UIImage(data: data) {
//                   imageAlbums = image
//                }
            case .none: break
            default: break
            }
        }


    }





}
