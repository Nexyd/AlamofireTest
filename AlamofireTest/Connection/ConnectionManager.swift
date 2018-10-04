//
//  ConnectionManager.swift
//  AlamofireTest
//
//  Created by Daniel Morato on 03/10/2018.
//  Copyright © 2018 dani. All rights reserved.
//

import Foundation
import Alamofire

class ConnectionManager {
    var endpoint: String = "https://www.mocky.io/v2/59f7760a2f0000ab1d55864e"
    var delegate: GetReportFormProtocol?

    func getReportForm() {
        Alamofire.request(endpoint, method: .get, parameters: nil,
            encoding: JSONEncoding.default, headers: nil).responseString
        {
            [weak self] response in

            let delegate = self?.delegate
            if response.result.isSuccess, let report = try?
                JSONDecoder().decode(AlienReport.self, from: response.data!) {
                delegate?.onGetReportForm(report: report)
            }
        }
    }
}


protocol GetReportFormProtocol {
    func onGetReportForm(report: AlienReport)
}
