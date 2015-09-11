//
//  ViewController.swift
//  Chinese
//
//  Created by Cyrilshanway on 2015/9/11.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth:UITextField!
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder()
    }
    
    
    @IBAction func okTapped(sender:AnyObject) {
        yearOfBirth.resignFirstResponder()
        if let year = yearOfBirth.text.toInt() {
            //year
            var imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
            
        }else {
            //notifi the user
            
        }
    }
}

