//
//  ViewController.swift
//  MeetupDemo
//
//  Copyright © 2019 ali ziwa. All rights reserved.
//

import RxSwift

class ViewController: UIViewController {

    private var userDetailsButton: UIButton!
    private var meetupVM : MeetupViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        meetupVM = MeetupViewModel()
        userDetailsButton = UIButton(frame: view.frame)
        
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(tapped(_:)))
        userDetailsButton.addGestureRecognizer(tapGesture)
    }
    
    @objc private func tapped(_ sender: UIButton) {
        print(meetupVM.getUser())
    }
}

