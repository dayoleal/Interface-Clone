//
//  ContentView.swift
//  Grupo10_VideoAPP
//
//  Created by Camila Toniato and Dayô Araújo on 11/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home()
                .tabItem {
                    Label("Início",systemImage: "tv.music.note.fill")
                    Color(.yellow)
                }
            Cantores()
                .tabItem {
                    Label("Artistas",systemImage: "music.mic")
                }
            Biblioteca()
                .tabItem {
                    Label("Biblioteca",systemImage: "film.stack.fill")
                }
            Perfil()
                .tabItem {
                    Label("Perfil",systemImage: "person.fill")
                }
            
        }.accentColor(.neonYellow)
    }
}
#Preview {
    ContentView()
}
