//
//  ContentView.swift
//  BetterRest
//
//  Created by Ram G on 3/5/23.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    @State private var coffeAmount = 1

    var body: some View {
        NavigationView {
            VStack {
                Text("When do you want to wake up?")
                    .font(.headline)
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Text("Desired amount of sleep")
                    .font(.headline)
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                
                Text("Daily coffee intake")
                    .font(.headline)
                
                Stepper(coffeAmount == 1 ? "1 cup" : "\(coffeAmount) cups", value: $coffeAmount, in: 1...20, step: 1)
            }
            .navigationTitle("Better Rest")
            .toolbar {
                Button("Calculate", action: calcBedtime)
            }
        }
    }
    
    func calcBedtime() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
