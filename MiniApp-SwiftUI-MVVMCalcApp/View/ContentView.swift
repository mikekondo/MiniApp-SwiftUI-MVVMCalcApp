//
//  ContentView.swift
//  MiniApp-SwiftUI-MVVMCalcApp
//
//  Created by 近藤米功 on 2022/09/10.
//

import SwiftUI

struct ContentView: View {

    // 使用するViewModelを指定
    @ObservedObject public var calcViewModel = CalcViewModel(calculator: Calculator())

    var body: some View {
        VStack{
            Text("\(calcViewModel.number)")
                .padding()
            Button("＋1"){
                calcViewModel.fetchAddtionResult()
                print("calcViewModel.number:",calcViewModel.number)
            }
            .padding()
            Button("-1"){
                calcViewModel.fetchSubtractionResult()
                print("calcViewModel.number:",calcViewModel.number)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
