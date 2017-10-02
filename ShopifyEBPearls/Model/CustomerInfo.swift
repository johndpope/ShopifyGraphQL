//
//  CustomerInfo.swift
//  New
//
//  Created by Prashant Sah on 9/19/17.
//  Copyright © 2017 Prashant Sah. All rights reserved.
//

import Foundation

class CustomerInfo {
    
    var id : String?
    var email : String
    var password : String
    var firstName : String?
    var lastName : String?
    var phone : String?
    var acceptsMarketing : Bool?
    
    init(email: String, password: String, firstName: String? = nil, lastName: String? = nil, phone: String? = nil,  acceptsMarketing: Bool? = nil) {
        
        self.email = email
        self.password = password
        self.firstName = firstName
        self.lastName = lastName
        self.phone = phone
        self.acceptsMarketing = acceptsMarketing
    }
}
