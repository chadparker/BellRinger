//
//  AudioPlayer.swift
//  BellRinger
//
//  Created by Chad Parker on 6/11/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

import Foundation
import AVFoundation

class AudioPlayer {
   
   var player: AVAudioPlayer?
   
   init() {
      NotificationCenter.default.addObserver(self, selector: #selector(playBellSound), name: .bellRung, object: nil)
   }
   
   @objc private func playBellSound() {
      let path = Bundle.main.path(forResource: "singlebell.wav", ofType:nil)!
      let url = URL(fileURLWithPath: path)

      do {
          player = try AVAudioPlayer(contentsOf: url)
          player?.play()
      } catch {
          print("couldn't load file")
      }
   }
}
