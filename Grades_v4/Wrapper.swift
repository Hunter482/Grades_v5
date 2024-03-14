//
//  Wrapper.swift
//  Grades_v4
//
//  Created by Jakob Erlebach on 04.03.24.
//

import SwiftUI

struct Wrapper: View {
    
    @StateObject var storage: storageclass = storageclass()
    
    var body: some View {
        switch storage.activeview {
        case .schuljahr:
            ContentView(storage: storage)
        case .fach:
            FachView(storage: storage)
        case .addfach:
            addfileview()
        }
    }
}

struct Wrapper_Previews: PreviewProvider {
    static var previews: some View {
        Wrapper()
    }
}
