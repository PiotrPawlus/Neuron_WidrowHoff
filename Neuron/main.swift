//
//  main.swift
//  Neuron
//
//  Created by Piotr Pawluś on 15/04/16.
//  Copyright © 2016 Piotr Pawluś. All rights reserved.
//

import Foundation

let neuron = Neuron(n: 12)
let xUcz: [[Double]] = [[-1,-1, 1, -1, -1, 1, -1, -1, 1, -1, -1, 1],
                        [1, -1, 1, 1, 1, 1, -1, -1, 1, -1, -1, 1]]
let dOcze: [Double] = [1, -1]
neuron.learn(500, xUcz: xUcz, dOcze: dOcze, theta: 0.05)
let out1 = neuron.fead(xUcz[0])
let out2 = neuron.fead(xUcz[1])

if out1 > 0 {
    print(1)
} else {
    print(4)
}
if out2 > 0 {
    print(1)
} else {
    print(4)
}
