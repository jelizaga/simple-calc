//
//  History.swift
//  another-calc
//
//  Created by Joel Elizaga on 4/27/16.
//  Copyright © 2016 Joel Elizaga. All rights reserved.
//

import Foundation
import UIKit

class History: UIViewController {
    
    @IBOutlet weak var historyScroll: UIScrollView!
    @IBOutlet weak var calc1: UILabel!
    @IBOutlet weak var calc2: UILabel!
    @IBOutlet weak var calc3: UILabel!
    @IBOutlet weak var calc4: UILabel!
    @IBOutlet weak var calc5: UILabel!
    @IBOutlet weak var calc6: UILabel!
    @IBOutlet weak var calc7: UILabel!
    @IBOutlet weak var calc8: UILabel!
    @IBOutlet weak var calc9: UILabel!
    @IBOutlet weak var calc10: UILabel!
    @IBOutlet weak var calc11: UILabel!
    @IBOutlet weak var calc12: UILabel!
    @IBOutlet weak var calc13: UILabel!
    @IBOutlet weak var calc14: UILabel!
    @IBOutlet weak var calc15: UILabel!
    
    var calculation1 = "-"
    var calculation2 = "-"
    var calculation3 = "-"
    var calculation4 = "-"
    var calculation5 = "-"
    var calculation6 = "-"
    var calculation7 = "-"
    var calculation8 = "-"
    var calculation9 = "-"
    var calculation10 = "-"
    var calculation11 = "-"
    var calculation12 = "-"
    var calculation13 = "-"
    var calculation14 = "-"
    var calculation15 = "-"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyScroll.contentSize.height = 1000
        self.calc1.text = calculation1
        self.calc2.text = calculation2
        self.calc3.text = calculation3
        self.calc4.text = calculation4
        self.calc5.text = calculation5
        self.calc6.text = calculation6
        self.calc7.text = calculation7
        self.calc8.text = calculation8
        self.calc9.text = calculation9
        self.calc10.text = calculation10
        self.calc11.text = calculation11
        self.calc12.text = calculation12
        self.calc13.text = calculation13
        self.calc14.text = calculation14
        self.calc15.text = calculation15

    }
    
    
}