//
//  ContentView.swift
//  PracticeTests
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    var body: some View {
        VStack {
            Form {
                VStack(spacing: 20) {
                    Text("\(vm.convertedText)")
                        .font(.headline)
                    TextField("Enter a value", text: $vm.text)
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.decimalPad)
                        .submitLabel(.done)
                    Button("Convert", action: vm.convertMoney)
                        .buttonStyle(.borderedProminent)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
