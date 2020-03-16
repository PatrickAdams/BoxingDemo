//
//  ViewModel.swift
//  Boxer
//
//  Created by Patrick Adams on 3/13/20.
//  Copyright © 2020 Patrick Adams. All rights reserved.
//

import Foundation

class ViewModel {

    let something = Box("Loading...")

    init() {
        makeFakeNetworkCall()
    }

    func makeFakeNetworkCall() {
        let secondsToDelay = 5.0
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
            self.something.value = "Hello, does this work?"
        }
    }
}
