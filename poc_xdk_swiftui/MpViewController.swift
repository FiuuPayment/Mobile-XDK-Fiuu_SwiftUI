//
//  MyView.swift
//  poc_xdk_swiftui
//
//  Created by Siti Norathirah Yahya on 13/03/2024.
//

import Foundation
import SwiftUI

struct MpViewController: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = MOLPayLib
    let mpDelegate = MOLPayDelegate()
    
    func makeUIViewController(context: Context) -> MOLPayLib {
        
        // Return MyViewController instance
        var mp = MOLPayLib()
        let paymentRequestDict: [String:Any] = [
            // Mandatory String. A value more than '1.00'
            "mp_amount": "1.10",
            
            // Mandatory String. Values obtained from MOLPay
            
            //Sandbox account
            "mp_username": "",
            "mp_password": "",
            "mp_merchant_ID": "",
            "mp_app_name": "",
            "mp_verification_key": "",
            
            // Mandatory String. Payment values
            "mp_order_ID": "swift-ios",
            "mp_currency": "MYR",
            "mp_country": "MY",
            
            // Optional String.
            "mp_channel": "multi", // Use 'multi' for all available channels option. For individual channel seletion, please refer to "Channel Parameter" in "Channel Lists" in the MOLPay API Spec for Merchant pdf.
            "mp_bill_description": "billdesc",
            "mp_bill_name": "billname",
            "mp_bill_email": "email@domain.com",
            "mp_bill_mobile": "+1234567",
            
            // "mp_ap_merchant_ID": "merchant.com.rms.mobile.applepay", // Optional, Apple Pay Merchant ID
            
            //"mp_channel_editing": NSNumber.init(booleanLiteral:false), // Option to allow channel selection.
            //"mp_editing_enabled": NSNumber.init(booleanLiteral:false), // Option to allow billing information editing.
            
            // Optional, enable for online sandbox testing.
            //"mp_dev_mode": NSNumber.init(booleanLiteral:true),
            
            // Optional for Escrow
            //"mp_is_escrow": "0", // Put "1" to enable escrow
            
            // Optional for credit card BIN restrictions
            //"mp_bin_lock": ["414170", "414171"],
            //"mp_bin_lock_err_msg": "Only UOB allowed",
            
            // For transaction request use only, do not use this on payment process
            //"mp_transaction_id": "", // Optional, provide a valid cash channel transaction id here will display a payment instruction screen.
            //"mp_request_type": "",
            
            // Optional, use this to customize the UI theme for the payment info screen, the original XDK custom.css file is provided at Example project source for reference and implementation.
            //"mp_custom_css_url": Bundle.main.path(forResource: "custom.css", ofType: nil)!,
            
            // Optional, set the token id to nominate a preferred token as the default selection, set "new" to allow new card only
            //"mp_preferred_token": "",
            
            // Optional, credit card transaction type, set "AUTH" to authorize the transaction
            //"mp_tcctype": "",
            
            // Optional, set true to process this transaction through the recurring api, please refer the MOLPay Recurring API pdf
            //"mp_is_recurring": NSNumber.init(booleanLiteral:false),
            
            // Optional for channels restriction
            //"mp_allowed_channels": ["credit", "credit3"],
            
            // Optional for sandboxed development environment, set boolean value to enable.
            //"mp_sandbox_mode": NSNumber.init(booleanLiteral:true),
            
            // Optional, required a valid mp_channel value, this will skip the payment info page and go direct to the payment screen.
            //"mp_express_mode": NSNumber.init(booleanLiteral:true),
            
            // Optional, enable this for extended email format validation based on W3C standards.
            //"mp_advanced_email_validation_enabled": NSNumber.init(booleanLiteral:true),
            
            // Optional, enable this for extended phone format validation based on Google i18n standards.
            //"mp_advanced_phone_validation_enabled": NSNumber.init(booleanLiteral:true),
            
            // Optional, explicitly force disable billing name edit.
            //"mp_bill_name_edit_disabled": NSNumber.init(booleanLiteral:true),
            
            // Optional, explicitly force disable billing email edit.
            //"mp_bill_email_edit_disabled": NSNumber.init(booleanLiteral:true),
            
            // Optional, explicitly force disable billing mobile edit.
            //"mp_bill_mobile_edit_disabled": NSNumber.init(booleanLiteral:true),
            
            // Optional, explicitly force disable billing description edit.
            //"mp_bill_description_edit_disabled": NSNumber.init(booleanLiteral:true),
            
            // Optional, EN, MS, VI, TH, FIL, MY, KM, ID, ZH.
            //"mp_language": "EN",
            
            // Optional, Cash channel payment request expiration duration in hour.
            //@"mp_cash_waittime": @"48",
            
            // Optional, allow bypass of 3DS on some credit card channels.
            //"mp_non_3DS": NSNumber.init(booleanLiteral:true),
            
            // Optional, disable card list option.
            //"mp_card_list_disabled": NSNumber.init(booleanLiteral:true),
            
            // Optional for channels restriction, this option has less priority than mp_allowed_channels.
            //"mp_disabled_channels": ["credit"]
        ]
        
        mp = MOLPayLib(delegate:mpDelegate, andPaymentDetails: paymentRequestDict)
        
        let nc = UINavigationController()
        nc.viewControllers = [mp]

        return mp
    }
    
    func updateUIViewController(_ uiViewController: MOLPayLib, context: Context) {
        // Updates the state of the specified view controller with new information from SwiftUI.
    }

}


