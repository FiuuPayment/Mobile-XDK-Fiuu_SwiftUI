//
//  MolpayDelegate.swift
//  poc_xdk_swiftui
//
//  Created by Siti Norathirah Yahya on 13/03/2024.
//

import Foundation

class MOLPayDelegate: NSObject, MOLPayLibDelegate {
    var transactionResultHandler: (([AnyHashable: Any]?) -> Void)?

    func transactionResult(_ result: [AnyHashable: Any]!) {
        // Handle payment result
        transactionResultHandler?(result)
    }
}
