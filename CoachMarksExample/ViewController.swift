//
//  ViewController.swift
//  CoachMarksExample
//
//  Created by Fabricio Masiero on 31/07/17.
//  Copyright © 2017 Fabricio Masiero. All rights reserved.
//

import UIKit
import CoachMarks


class ViewController: UIViewController {
    
    private lazy var coachmark: CoachmarkView = CoachmarkView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.navigationController?.view.addSubview(coachmark)
        coachmark.translatesAutoresizingMaskIntoConstraints = false
        coachmark.leftAnchor.constraint(equalTo: self.navigationController!.view.leftAnchor).isActive = true
        coachmark.topAnchor.constraint(equalTo: self.navigationController!.view.topAnchor).isActive = true
        coachmark.bottomAnchor.constraint(equalTo: self.navigationController!.view.bottomAnchor).isActive = true
        coachmark.rightAnchor.constraint(equalTo: self.navigationController!.view.rightAnchor).isActive = true
        
        
        coachmark.textLabel.textColor = .white
        coachmark.textLabel.text = "👋 this is a little example app showcasing some coach marks"
        
        coachmark.present(in: (self.navigationController?.view)!, from: CGRect.init(x: 332, y: 30, width: 30, height: 30).insetBy(dx: -3, dy: -3), focusingOnElement: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

