//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Thiago Martins on 11/05/17.
//  Copyright © 2017 Thiago Martins. All rights reserved.
//

// PAREI EM: Add Star Images to the Buttons

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    // MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    @IBInspectable var starSize : CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount : Int = 5 {
        didSet {
            setupButtons()
        }
    }

    // MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button Pressed 👍")
    }
    
    // MARK: Private Methods
    private func setupButtons() {
        
        // Clear any existing button:
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        for _ in 0..<starCount {
            // Create the button:
            let button = UIButton()
            button.backgroundColor = .red
            
            // Add Constraints:
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive =  true
            
            // Setup the button action:
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // Add button to the stack:
            addArrangedSubview(button)
            
            // Add the new button to the rating button array:
            ratingButtons.append(button)
        }
    }
}
