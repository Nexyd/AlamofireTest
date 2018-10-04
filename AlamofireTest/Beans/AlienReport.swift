//
//  AlienReport.swift
//  AlamofireTest
//
//  Created by Daniel Morato on 03/10/2018.
//  Copyright © 2018 dani. All rights reserved.
//

import Foundation

struct AlienReport: Codable {
    var userId: Int?
    var formId: String?
    var form: [AlienReporterForm]?
    var lastChangedDate: String?
    var lastChangedBy: String?
    
    // This serves for debugging purposes.
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        userId = try? container.decode(Int.self, forKey: .userId)
//        formId = try? container.decode(String.self, forKey: .formId)
//        form = try? container.decode([AlienReporterForm].self, forKey: .form)
//        lastChangedDate = try? container.decode(String.self, forKey: .lastChangedDate)
//        lastChangedBy = try? container.decode(String.self, forKey: .lastChangedBy)
//    }

//    private enum CodingKeys: String, CodingKey {
//        case userId
//        case formId
//        case form
//        case lastChangedDate
//        case lastChangedBy
//    }
}
