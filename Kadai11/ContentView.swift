//
//  ContentView.swift
//  Kadai11
//
//  Created by mana on 2021/12/28.
//

import SwiftUI

struct ContentView: View {
    @State private var selectText: String?
    @State private var isShowModal = false

    var body: some View {
        HStack {
            Group {
                Text("都道府県")
                Text("\(selectText ?? "未選択")")
                Button("変更") {
                    isShowModal.toggle()
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.horizontal, 30.0/*@END_MENU_TOKEN@*/)
        }
        .fullScreenCover(isPresented: $isShowModal) {
            TableView(selectText: $selectText, isShowModal: $isShowModal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
