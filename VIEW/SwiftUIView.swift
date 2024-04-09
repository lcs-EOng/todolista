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
                    ItemView(
                        title: "Study for chemistry quiz",
                        done: false
                    )
                    ItemView(
                        title: "Go for a run around campus",
                        done: false
                    )
                    ItemView(
                        title: "Finish computer science assignment",
                        done: true
                    )
                }
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text:
                    $newItemDescirption)
                    Button("ADD"){
                        //Add the new to-do item
                    }
                    .font(.caption)
                }
            }
            .navigationTitle("To do")
            .padding(20)
        }
        
    }
            }
        
    
    





#Preview {
    LandingView()
}


struct ItemView: View {
    let title: String
    let done: Bool
    var body: some View {
        Label(title: {Text(title)}, icon: {
            if done == true{
                Image(systemName: "checkmark.circle")
            } else{
                Image(systemName: "circle")
            }
        }
        )
    }
}
