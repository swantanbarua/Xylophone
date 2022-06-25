//
//  ViewController.swift
//  Xylophone
//
//  Created by Swantan Barua on 25/06/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var timer = Timer()
    
    @IBAction func xylophoneButtonPressed(_ sender: UIButton) {
        
        player = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: String(sender.currentTitle!), withExtension: "wav")!)
        player.play()
    }
}

