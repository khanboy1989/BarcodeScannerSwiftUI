//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Serhan Khan on 18.09.22.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode: String = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        return scannedCode.isEmpty ? "Not yet scanned": scannedCode
    }
    
    var statusTextColor: Color {
        return scannedCode.isEmpty ? .red : .green
    }
}
