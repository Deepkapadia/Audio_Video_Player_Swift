//
//  ViewController.swift
//  AudioVideoPlayerSwift
//
//  Created by MACOS on 6/20/17.
//  Copyright © 2017 MACOS. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnaudio(_ sender: Any) {
        
    }

    @IBAction func btnvideo(_ sender: Any) {
        
        //it will open new controller and play vedio
        
        let videoURL = NSURL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4");
        
        let player = AVPlayer(url: videoURL! as URL);
        let playerViewController = AVPlayerViewController();
        playerViewController.player = player;
        
        self.present(playerViewController, animated: true) {
            playerViewController.player!.play();
        }
        
        //it will play vedio only in same viewcontroller
        
        /*
         let videoURL = NSURL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
         let player = AVPlayer(url: videoURL! as URL)
         let playerLayer = AVPlayerLayer(player: player)
         playerLayer.frame = self.view.bounds
         self.view.layer.addSublayer(playerLayer)
         player.play()
         
         */
    }
}

