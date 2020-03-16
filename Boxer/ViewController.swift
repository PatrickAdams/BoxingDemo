//
//  ViewController.swift
//  Boxer
//
//  Created by Patrick Adams on 3/13/20.
//  Copyright © 2020 Patrick Adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var someLabel: UILabel!

    let viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }

    func setupBindings() {
        viewModel.something.bind { (stringValue) in
            self.someLabel.text = stringValue
        }
    }
}

