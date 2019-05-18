//
//  ViewController.swift
//  EggTimer
//
//  Created by Benedito Macedo on 18/05/19.
//  Copyright © 2019 bamacedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var counter = 210
    
    @IBOutlet weak var counterTimer: UILabel!
    
    @IBAction func pauseTimer(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func startTimer(_ sender: Any) {

        timer = Timer.scheduledTimer(timeInterval: 1, target: self,
                                     selector: #selector(ViewController.processTimer),
                                     userInfo: nil, repeats: true)
    }
    
    @objc func processTimer() {
        counterTimer.text = String(counter)
        
        if counter <= 0 {
            timer.invalidate()
        } else {
            counter -= 1
        }
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if counter > 10 {
            counter -= 10
        } else {
            counter = 0
        }
    }
    
    @IBAction func plusTen(_ sender: Any) {
        counter += 10
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        counter = 210
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,
                                     selector: #selector(ViewController.processTimer),
                                     userInfo: nil, repeats: true)
    }
}
