//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by jplima on 05/01/21.
//  Copyright © 2021 jplima. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var labelAnswered: UILabel!
    @IBOutlet weak var labelCorrected: UILabel!
    @IBOutlet weak var labelWrong: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Close(_ sender: UIButton) {
        
    }
    
}
