//
//  ContentView.swift
//  Conversions - convert Celsius to Fahrenheit.
//  °F = °C × (9/5) + 32
//
//  Created by Anton Serdyuchenko on 08.12.2024.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var isSumFocused: Bool
    @State private var celsius: Int = 0
    
    var convert: Int {
        return celsius * (9/5) + 32
    }
   
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Enter temperature in celsius °C:") {
                    TextField("Celsius", value: $celsius, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($isSumFocused)
                }
                Section("Temperature in Fahrenheit °F:") {
                    Text(convert, format: .number)
                }
            }
            .navigationTitle("Conversions")
            .toolbar {
                if isSumFocused {
                    Button("Done") {
                        isSumFocused = false
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
