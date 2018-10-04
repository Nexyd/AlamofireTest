//
//  ViewController.swift
//  AlamofireTest
//
//  Created by Daniel Morato on 03/10/2018.
//  Copyright © 2018 dani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, GetReportFormProtocol {
    
    private let connection = ConnectionManager()
    // private var formsData: [String] = []
    private var formsData: [String] = ["1", "2", "3"]
    
    @IBOutlet weak var userId: UITextView!
    @IBOutlet weak var formId: UITextView!
    @IBOutlet weak var lastChangedDate: UITextView!
    @IBOutlet weak var lastChangedBy: UITextView!
    @IBOutlet weak var forms: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        connection.delegate = self
        connection.getReportForm()
    }
    
    func onGetReportForm(report: AlienReport) {
        userId.text = String(report.userId!)
        formId.text = report.formId
        lastChangedDate.text = report.lastChangedDate
        lastChangedBy.text = report.lastChangedBy

        for form in report.form! {
            formsData.append(form.id!)
        }
    }
    
    func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        return formsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = formsData[indexPath.row]
        return cell
    }
}
