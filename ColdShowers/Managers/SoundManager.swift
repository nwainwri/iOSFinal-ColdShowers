//
//  SoundManager.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-30.
//  Copyright © 2018 Kit Clark-O'Neil and Nathan Wainwright All rights reserved.
//

import Foundation

import AVFoundation

var player: AVAudioPlayer?

class SoundManager {

  func doneActivity() {
    do {
      if let fileURL = Bundle.main.path(forResource: "doneActivity", ofType: "wav") {
        player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))

        print("Continue processing")
      } else {
        print("Error: No file with specified name exists")
      }
    } catch let error {
      print("Can't play the audio file failed with an error \(error.localizedDescription)")
    }
    player?.play()
  }
}
