//
//  ViewController.swift
//  Xylophone
//
//  Created by Swantan Barua on 25/06/22.


import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    var timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func xylophoneButtonPressed(_ sender: UIButton) {
        
        player = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: String(sender.currentTitle!), withExtension: "wav")!)
        player.play()
        sender.alpha = 0.7
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            sender.alpha = 1.0
        }
    }
}
