//
//  DirectionViewController.swift
//  NESW
//
//  Created by Grant Brooks on 9/12/17.
//  Copyright © 2017 Grant Brooks. All rights reserved.
//

import UIKit

class DirectionViewController: UIViewController {
    
    weak var delegate: DirectionDelegate?
    var direction = ""
    
    @IBOutlet weak var directionLabel: UILabel!
    
    @IBOutlet weak var cancelButtonLabel: UIButton!
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        directionLabel.text = direction
        cancelButtonLabel.setTitle(direction, for: .normal)

        // Do any additional setup after loading the view.
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let compassViewController = segue.destination as! CompassViewController
//        compassViewController.delegate = self
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func addDirectionText(direction: String) {
//        directionLabel.text = direction
//    }

}
