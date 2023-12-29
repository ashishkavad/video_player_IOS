//
//  ViewController.swift
//  video_player
//
//  Created by Ashish Kavad on 29/12/23.
//
import UIKit
import AVKit
import AVFoundation

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }

    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "test", ofType: "mp4") else {
            debugPrint("mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}
