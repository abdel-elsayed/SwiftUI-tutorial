//
//  ContentView.swift
//  IAmRich
//
//  Created by Abdelrahman Elsayed on 11/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.17, green: 0.23, blue: 0.28, alpha: 1.00)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                VStack {
                    Image("Abooda")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                    
                    Text("Abdelrahman Elsayed")
                        .font(Font.custom("Pacifico-Regular", size: 40))
                        .bold()
                        .foregroundColor(.white)
                    Text("Aspiring iOS Developer")
                        .foregroundColor(.white)
                        .font(.title2)
                    
                    cardView().padding(.vertical, 40)
                    
                    CustomLink(text: "GitHub", link: "https://github.com/abdel-elsayed")
                    CustomLink(text: "LinkedIn",link: "https://www.linkedin.com/in/abdel-elsayed")
                    CustomLink(text: "Personal Website",link: "https://www.abdelrahman-elsayed.netlify.app")
                    
                }
            }
        }
    }
    
    struct CustomLink: View {
        var text: String
        var link: String
        
        var body: some View {
            Link(destination: URL(string: link)!, label: {
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .medium, design: .monospaced))
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("PrimaryOrange"), lineWidth: 3)
                    )
            })
            
        }
    }
}


struct cardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(UIColor(red: 0.90, green: 0.90, blue: 0.90, alpha: 1.00)))
                .frame(width: 300, height: 120)
                .shadow(color: Color("PrimaryOrange"), radius: 12, x: 1, y: 1)
            HStack {
                VStack(alignment: .leading) {
                    HStack{
                        Image(systemName: "location.circle.fill").foregroundColor(Color("PrimaryOrange"))
                        
                        Text("New York City, NY.").font(.callout)
                    }.padding(.bottom, 10)
                    HStack{
                        Image(systemName: "briefcase.fill").foregroundColor(Color("PrimaryOrange"))
                        
                        Text("ABC Companies.").font(.callout)
                    }.padding(.bottom , 10)
                    HStack{Image(systemName: "envelope.circle.fill").foregroundColor(Color("PrimaryOrange"))
                        
                        Text("abdel.elsayed@abc.org").font(.callout)
                    }.padding(.bottom , 10)
                }
                Spacer()
            }.frame(width: 300, height: 120)
            
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

