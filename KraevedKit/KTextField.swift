//
//  KTextField.swift
//  Kraeved
//
//  Created by Владимир Амелькин on 28.12.2022.
//

import UIKit

public class KTextField: UITextField {
    private let bottomLineColor: UIColor
    private var bottomLineLayer: CALayer?
    
    public var isBottomLineHidden: Bool = false {
        didSet {
            bottomLineLayer?.isHidden = isBottomLineHidden
        }
    }
    
    public init(bottomLineColor: UIColor = UIColor.gray) {
        self.bottomLineColor = bottomLineColor
        super.init(frame: .zero)
        borderStyle = .none
    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        
        if bottomLineLayer == nil {
            bottomLineLayer = CALayer()
        } else {
            bottomLineLayer?.removeFromSuperlayer()
        }
        
        guard let bottomLineLayer = bottomLineLayer else { return }
        
        bottomLineLayer.frame = CGRect(x: 0, y: frame.height - 2, width: frame.width, height: 2)
        bottomLineLayer.backgroundColor = bottomLineColor.cgColor
        
        layer.addSublayer(bottomLineLayer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
