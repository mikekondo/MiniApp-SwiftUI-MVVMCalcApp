//
//  Calculator.swift
//  MiniApp-SwiftUI-MVVMCalcApp
//
//  Created by 近藤米功 on 2022/09/10.
//

import Foundation

// MARK: - Model
class Calculator {
    public var number: Int = 0

    func addition() {
        self.number = self.number + 1
    }

    func subtraction() {
        self.number = self.number - 1
    }
}

