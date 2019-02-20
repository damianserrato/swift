//
//  File.swift
//  PrepareForSegue
//
//  Created by Conner on 2/20/19.
//  Copyright © 2019 damianserrato. All rights reserved.
//

import Foundation
import UIKit

class dismiss: UIViewController {
    var output: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel.text = output
    }
    @IBAction func dismissButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var secondLabel: UILabel!
    
    
}
