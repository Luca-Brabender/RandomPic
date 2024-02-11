//
//  ContentView.swift
//  RandomPic
//
//  Created by Luca Brabender on 11.02.24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = RandomPictureViewmodel()
    @State var url = ""
    
    var body: some View {
        VStack {
            Text("Dog-Image-Generator")
                .font(.headline)
                .dynamicTypeSize(.accessibility1)
            Spacer()
            AsyncImage(url: URL(string: url))
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: 350, alignment: .leading)
                .cornerRadius(20)
            
            
            Spacer()
            HStack{
                Button("generate new image"){
                    
                }
                .buttonStyle(.bordered)
                .tint(.blue)
                .controlSize(.large)
            }
        }
        .onAppear(){
            if vm.pictureData.message.isEmpty || vm.pictureData.status.isEmpty{
                Task{
                    await vm.fetchData()
                    url = vm.pictureData.message
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
