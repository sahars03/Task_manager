//
//  TodoListView.swift
//  CuteApp
//
//  Created by Vrinda Joshi on 17/07/2024.
//

import SwiftUI

struct TodoListView: View {
    var body: some View {
        
        VStack{
            Text("Your To-Do List")
                .font(.largeTitle)
                .padding()
            
            ScrollView{
                
                VStack(alignment: .leading){
                    ForEach(0..<20, id: \.self) { item in
                        Text("Task \(item + 1)")
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .padding(.top, 4)
                    }
                    
                }
                
            }
        }
        .navigationTitle("Today")
    }
}
    #Preview {
        TodoListView()
    }

