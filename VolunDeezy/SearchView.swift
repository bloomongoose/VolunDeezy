//
//  SearchView.swift
//  VolunDeezy
//
//  Created by Radeen A on 5/10/23.
//

import SwiftUI
struct SearchView: View {
    
    @State private var zipcode: String = ""
    @State private var numOfVolunteers: String = ""
    @State private var filters: String = ""
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
  var body: some View {
    ZStack {
      Color("Vanilla")
        .ignoresSafeArea()
        
        VStack{
            Text("Where would you like to volunteer?")
                .font(.title)
                .multilineTextAlignment(.center)
            //Spacer()
            
            HStack{
                Spacer()
                TextField(
                    "Enter Number of Volunteers",
                    text: $numOfVolunteers
                )
                .padding()
                .frame(width: 300, height: 50)
                
                .background(Color("Platinum"))
                .cornerRadius(10)
                Spacer()
                
            }
            HStack{
                Spacer()
                TextField(
                    "Enter Zipcode",
                    text: $zipcode
                )
                .padding()
                .frame(width: 300, height: 50)
                
                .background(Color("Platinum"))
                .cornerRadius(10)
                Spacer()
                
            }
            Spacer()
                .frame(height:20)
            
            List {
                        Section {
                            TextField("Enter filters", text: $newWord)
                        }

                        Section {
                            ForEach(usedWords, id: \.self) { word in
                                Text(word)
                            }
                        }
                    }
                    .onSubmit(addNewWord)
                    .padding(.horizontal, 50)

            

            
            Spacer()
                .frame(height:20)
            HStack{
                Spacer()
                    .frame(width: 50)

                NavigationLink(destination: GridResultsView()){
                    Text("Grid View")
                }
                .padding()
                .frame(width: 150, height: 100)
                .background(Color("Flame"))
                .foregroundColor(Color("RichBlack"))
                .cornerRadius(10)
                .padding(.bottom, 30)
                
                NavigationLink(destination: MapResultView()){
                    Text("Map View")
                }
                .padding()
                .frame(width: 150, height: 100)
                .background(Color("Flame"))
                .foregroundColor(Color("RichBlack"))
                .cornerRadius(10)
                .padding(.bottom, 30)
                
                Spacer()
                    .frame(width: 50)
            }
            
            
        }
        
    }
  }
    
    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        guard answer.count > 0 else { return }

        withAnimation {
            usedWords.insert(answer, at: 0)
        }
        newWord = ""
    }
}
struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
      SearchView()
  }
}
