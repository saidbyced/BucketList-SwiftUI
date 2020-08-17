//
//  BucketListView.swift
//  BucketList
//
//  Created by Chris Eadie on 17/08/2020.
//  Copyright © 2020 Chris Eadie Designs. All rights reserved.
//

import SwiftUI

let fileManagament = FileManagement()

struct BucketListView: View {
    var body: some View {
        Text("Hello, World!")
            .onTapGesture {
                let string = "Test Message"
                let url = fileManagament.getDocumentsDirectory().appendingPathComponent("message.txt")
                
                do {
                    try string.write(to: url, atomically: true, encoding: .utf8)
                    let input = try String(contentsOf: url)
                    print(input)
                } catch {
                    print(error.localizedDescription)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BucketListView()
    }
}
