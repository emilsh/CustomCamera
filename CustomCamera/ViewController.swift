//
//  ViewController.swift
//  CustomCamera
//
//  Created by Emil Shafigin on 11/12/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var photosButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = 6.0
        let image = UIImage(systemName: "photo.on.rectangle")
        button.setImage(image, for: .normal)
        view.addSubview(button)
        return button
    }()
    
    lazy var toggleCameraButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = .systemGray4
        button.layer.cornerRadius = 20.0
        let image = UIImage(systemName: "arrow.triangle.2.circlepath")
        button.setImage(image, for: .normal)
        view.addSubview(button)
        return button
    }()
    
    lazy var takePhotoButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = .red
        button.layer.borderColor = UIColor.systemGray3.cgColor
        button.layer.borderWidth = 3.0
        button.layer.cornerRadius = 30.0
        view.addSubview(button)
        return button
    }()
    
    lazy var flashButton: UIButton = {
        let button = UIButton(frame: .zero)
        let image = UIImage(systemName: "bolt.fill")
        button.setImage(image, for: .normal)
        view.addSubview(button)
        return button
    }()
    
    lazy var previewView: UIView = {
        let previewView = UIView(frame: .zero)
        previewView.backgroundColor = .systemGray2
        view.addSubview(previewView)
        return previewView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray5
        setupConstraints()
    }
    
    func setupConstraints() {
        photosButton.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(16)
            make.centerY.equalTo(takePhotoButton)
        }
        
        toggleCameraButton.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.width.equalTo(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(16)
            make.centerY.equalTo(takePhotoButton)
        }
        
        takePhotoButton.snp.makeConstraints { make in
            make.height.equalTo(64)
            make.width.equalTo(64)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide).inset(16)
        }
        
        flashButton.snp.makeConstraints { make in
            make.height.equalTo(34)
            make.width.equalTo(34)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(12)
            make.top.equalTo(view.safeAreaLayoutGuide)
        }
        
        previewView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(flashButton.snp.bottom).offset(12)
            make.height.equalTo(view.snp.width).multipliedBy(1.3333333333)
        }
        
    }


}

