//
//  CalcViewModel.swift
//  MiniApp-SwiftUI-MVVMCalcApp
//
//  Created by 近藤米功 on 2022/09/10.
//

import Foundation
import SwiftUI

class CalcViewModel: ObservableObject {
    @Published var calculator: Calculator // 使用するモデルを指定
    @Published var number: Int // モデルから受け取るプロパティを指定

    init(calculator: Calculator) {
        self.calculator = calculator
        self.number = calculator.number
    }

    func addition() {
        calculator.addition()
        number = calculator.number
    }

    func subtraction() {
        calculator.subtraction()
        number = calculator.number
    }
}
