//
//  Neuron.swift
//  Neuron_Widrow-Hoff
//
//  Created by Piotr Pawluś on 15/04/16.
//  Copyright © 2016 Piotr Pawluś. All rights reserved.
//

import Foundation

class Neuron {
    private var w = [Double]()
    private var deltaW: [Double]
    private var n: Int
    private let w0 = -1.0

    init(n: Int) {
        self.n = n
        deltaW = [Double](count: n+1, repeatedValue: 0.0)
        setWeight()
    }

    func fead(x: [Double]) -> Double {
        var result = 0.0
        for index in 0..<n {
            result += w[index] * x[index]
        }
        result += w[n]
        return result
    }

    func learn(iloscEpok: Int, xUcz: [[Double]], dOcze: [Double], theta: Double) {
        for _ in 0...iloscEpok {
            for i in 0..<xUcz.count {
                let y = fead(xUcz[i])
                let e = dOcze[i] - y
                
                for j in 0..<xUcz[i].count {
                    deltaW[j] = theta * e * xUcz[i][j]
                }
                
                for j in 0..<w.count {
                    w[j] += deltaW[j]
                }
            }
        }
    }

    private func setWeight() {
        for _ in 0..<n {
            w.append(rand())
        }
        w.append(w0)
    }

    private func rand() -> Double {
        let min = -1
        let max = 1
        var result = Double(Int(arc4random_uniform(UInt32(max - min + 1))) + min)
        if result == 0 {
            result = rand()
        }
        return result
    }

}