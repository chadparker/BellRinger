//
//  ViewController.swift
//  BellRinger
//
//  Created by Chad Parker on 6/11/20.
//  Copyright © 2020 Chad Parker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var bellButton: UIButton!
   
   let audioPlayer = AudioPlayer()
   
   @IBAction func bellButtonTapped(_ sender: Any) {
      NotificationCenter.default.post(name: .bellRung, object: self)
   }
}
