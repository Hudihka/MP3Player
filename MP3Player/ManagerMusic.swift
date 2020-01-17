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

    let audioPlayer: AVAudioPlayer = AVAudioPlayer()

    private var arrayName: [String]{

        var path = Bundle.main.paths(forResourcesOfType: "mp3", inDirectory: nil).compactMap({$0.components(separatedBy: "/").last})
        path = path.sorted(by: {$0 < $1}).compactMap({$0.remove(suffix: ".mp3")})

        return path
    }


    private var arrayURL: [URL]{

        var arrayUrl = [URL]()

        for obj in arrayName {
            if let path = Bundle.main.path(forResource: obj, ofType: "mp3") {
                let url = URL(fileURLWithPath: path)
                arrayUrl.append(url)
            }
        }

        return arrayUrl
    }

    func getFileForIndex(_ index: Int){
        guard !arrayURL.isEmpty, index < arrayURL.count else {return}



//        Bundle.main.path

//        let url = urlFile[index]
//        let data = Data(contentsOf: url)



//        if let data = try? Data(contentsOf: url){
//
//
//
//
//
//        }




    }




}


//extension Music: AVAudioPlayerDelegate{
//
//
//
//
//}
