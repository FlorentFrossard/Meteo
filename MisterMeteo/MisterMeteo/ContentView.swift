//
//  ContentView.swift
//  MisterMeteo
//
//  Created by Florent Frossard on 19/03/2020.
//  Copyright © 2020 Florent Frossard. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM : WeatherViewModel
    
    init(){
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        VStack(alignment: .center) {
            
            TextField("Enter your City", text: $weatherVM.cityName, onCommit:  {
                self.weatherVM.search()
            })
                .font(.custom("Arial", size: 50))
                .padding()
                .fixedSize()
            
            Text(self.weatherVM.temperature)
                .font(.custom("Arial", size: 50))
                .foregroundColor(.white)
                .offset(y:100)
                .padding(50)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.orange)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
