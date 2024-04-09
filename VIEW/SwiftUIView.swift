//
//  SwiftUIView.swift
//  todolist
//
//  Created by Ong Eason on 9/4/2024.
//

import SwiftUI

struct LandingView: View {
    //MARK: Stored properties
    
    //The item currently being added
    @State var newItemDescirption: String = ""
    
    //The search text
    @State var searchText = ""
    
    //MARK: Computed propeties
    var body : some View {
        NavigationView{
            VStack{
                List{
                    Text("Study for Chemistry test")
                    Text("Go for a run around campus")
                    Text("Laundry")
                }
                .searchable(text: $searchText)
                HStack{
                    
                }
                .padding(20)
            }
            .navigationTitle("To do")
        }
    }
    
}



#Preview {
    LandingView()
}

