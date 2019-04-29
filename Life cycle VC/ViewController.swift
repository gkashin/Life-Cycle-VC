//
//  ViewController.swift
//  Life cycle VC
//
//  Created by Георгий Кашин on 28/04/2019.
//  Copyright © 2019 Georgii Kashin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private static var informationString = NSMutableAttributedString()
    @IBOutlet weak var informationLabel: UILabel!
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        ViewController.informationString.append(makeMessage())
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ViewController.informationString.append(makeMessage())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewController.informationString.append(makeMessage())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ViewController.informationString.append(makeMessage())
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        ViewController.informationString.append(makeMessage())
        informationLabel.attributedText = ViewController.informationString
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        ViewController.informationString.append(makeMessage())
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        ViewController.informationString.append(makeMessage())
    }
}

//MARK: - Message
extension ViewController {
    
    private func makeMessage(function: String = #function) -> NSMutableAttributedString {
        let message = "\(title ?? "nil"): \(function)\n"
        let mutableMessage = NSMutableAttributedString(string: message)
        
        mutableMessage.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(named: title!)!, range: NSRange(location: 0, length: message.count))
        
        return mutableMessage
    }
}
