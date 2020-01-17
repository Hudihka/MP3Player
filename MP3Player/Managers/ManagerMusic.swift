//
//  ManagerMusic.swift
//  MP3Player
//
//  Created by Username on 17.01.2020.
//  Copyright © 2020 itMegastar. All rights reserved.
//

import Foundation
import AVFoundation

class Music: NSObject{

    static let shared = Music()

    var audioPlayer: AVAudioPlayer = AVAudioPlayer()

    private var arrayName: [String]{

        var path = Bundle.main.paths(forResourcesOfType: "mp3", inDirectory: nil).compactMap({$0.components(separatedBy: "/").last})
        path = path.sorted(by: {$0 < $1}).compactMap({$0.remove(suffix: ".mp3")})

        return path
    }


    var arraySrtuct: [MusicStruct]{

        let array = arrayName.compactMap({MusicStruct(name: $0)})

        return array

    }

    func playFor(_ index: Int){

        if let url = arrayName[index].getURL(ofType: "mp3"){

            do {
                self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer.play()

            } catch {
                print(error)
            }
        }
    }







}


//extension Music: AVAudioPlayerDelegate{
//
//
//
//
//}
