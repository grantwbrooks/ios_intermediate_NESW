//
//  ViewController.swift
//  NESW
//
//  Created by Grant Brooks on 9/12/17.
//  Copyright © 2017 Grant Brooks. All rights reserved.
//

import UIKit

class CompassViewController: UIViewController, DirectionDelegate {
    
//    weak var delegate: CompassDelegate?

    var direction: String = ""
    
    @IBAction func directionPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "direction", sender: sender)
//        direction = sender.titleLabel!.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let directionViewController = segue.destination as! DirectionViewController
        directionViewController.delegate = self
        
        let directionSent = sender as? UIButton
        directionViewController.direction = (directionSent?.titleLabel!.text!)!
    }
    
    
    func cancelButtonPressed(by controller: DirectionViewController) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

