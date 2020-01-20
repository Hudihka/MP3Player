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

    var audioPlayer: AVAudioPlayer?

    var playIndex: Int? = nil

    private var arrayName: [String] = []
    var arraySrtuct: [MusicStruct] = []

    func initData(){
        let path = Bundle.main.paths(forResourcesOfType: "mp3", inDirectory: nil).compactMap({$0.components(separatedBy: "/").last})

        self.arrayName = path.sorted(by: {$0 < $1}).compactMap({$0.remove(suffix: ".mp3")})
        self.arraySrtuct = arrayName.compactMap({MusicStruct(name: $0)})

    }


    var activePlayer: Bool {
        return self.audioPlayer?.isPlaying ?? false
    }


    func playFor(_ index: Int){

        if let url = arrayName[index].getURL(ofType: "mp3"){

            do {
                self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                self.audioPlayer?.delegate = self
                audioPlayer?.play()
                self.playIndex = index
            } catch {
                print(error)
            }
        }
    }

    func nextTrack(){

        guard var index = playIndex else {return}

        index += 1

        if index == arrayName.count {
            index = 0
        }

        playFor(index)
        playIndex = index

    }


    func prevTrack(){

        guard var index = playIndex else {return}

        index -= 1

        if index == -1 {
            index = arrayName.count - 1
        }

        playFor(index)
        playIndex = index
    }

    var getActiveStruct: MusicStruct? {
        guard let index = playIndex else {return nil}

        return arraySrtuct[index]

    }



}


//extension Music: AVAudioPlayerDelegate{
//
//
//
//
//}
