//
//  ViewController.swift
//  PrepareForSegue
//
//  Created by Conner on 2/20/19.
//  Copyright © 2019 damianserrato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! dismiss
        destination.output = textField.text
    }

}

