//
//  LoginView.swift
//  Countries
//
//  Created by Irinka Datoshvili on 28.04.24.
//

import UIKit

// MARK: - Login View

class LoginView: UIView {
    
    let photoButton = UIButton()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let repeatPasswordTextField = UITextField()
    let loginButton = UIButton()
    let imagePicker = UIImagePickerController()
    let dynamicBackground = UIColor.dynamicColor(light: UIColor.white, dark: UIColor(red: 0.24, green: 0.24, blue: 0.24, alpha: 1.0))
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        backgroundColor = dynamicBackground
        
        photoButton.translatesAutoresizingMaskIntoConstraints = false
        photoButton.setImage(UIImage(named: "addPhoto"), for: .normal)
        photoButton.imageView?.contentMode = .scaleAspectFit
        addSubview(photoButton)
        
        let formStackView = UIStackView()
        formStackView.translatesAutoresizingMaskIntoConstraints = false
        formStackView.axis = .vertical
        formStackView.spacing = 30
        addSubview(formStackView)
        
        let usernameStackView = UIStackView()
        usernameStackView.axis = .vertical
        usernameStackView.spacing = 6
        
        let usernameLabel = UILabel()
        usernameLabel.text = "მომხმარებლის სახელი"
        usernameLabel.font = UIFont(name: "FiraGO-Medium", size: 11)
        usernameStackView.addArrangedSubview(usernameLabel)
        
        usernameTextField.placeholder = "შეიყვანეთ მომხმარებლის სახელი"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.clipsToBounds = true
        usernameTextField.font = UIFont(name: "FiraGO-Medium", size: 11)
        usernameTextField.layer.cornerRadius = 18
        usernameTextField.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1.0)
        usernameStackView.addArrangedSubview(usernameTextField)
        formStackView.addArrangedSubview(usernameStackView)
        
        let passwordStackView = UIStackView()
        passwordStackView.axis = .vertical
        passwordStackView.spacing = 6
        
        let passwordLabel = UILabel()
        passwordLabel.text = "პაროლი"
        passwordLabel.font = UIFont(name: "FiraGO-Medium", size: 11)
        passwordStackView.addArrangedSubview(passwordLabel)
        
        passwordTextField.placeholder = "შეიყვანეთ პაროლი"
        passwordTextField.font = UIFont(name: "FiraGO-Medium", size: 11)
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.clipsToBounds = true
        passwordTextField.layer.cornerRadius = 18
        passwordTextField.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1.0)
        passwordStackView.addArrangedSubview(passwordTextField)
        formStackView.addArrangedSubview(passwordStackView)
        
        let repeatPasswordStackView = UIStackView()
        repeatPasswordStackView.axis = .vertical
        repeatPasswordStackView.spacing = 6
        
        let repeatPasswordLabel = UILabel()
        repeatPasswordLabel.text = "გაიმეორეთ პაროლი"
        repeatPasswordLabel.font = UIFont(name: "FiraGO-Medium", size: 11)
        repeatPasswordStackView.addArrangedSubview(repeatPasswordLabel)
        
        repeatPasswordTextField.placeholder = "განმეორებით შეიყვანეთ პაროლი"
        repeatPasswordTextField.font = UIFont(name: "FiraGO-Medium", size: 11)
        repeatPasswordTextField.borderStyle = .roundedRect
        repeatPasswordTextField.clipsToBounds = true
        repeatPasswordTextField.layer.cornerRadius = 18
        repeatPasswordTextField.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1.0)
        repeatPasswordStackView.addArrangedSubview(repeatPasswordTextField)
        formStackView.addArrangedSubview(repeatPasswordStackView)
        
        loginButton.setTitle("შესვლა", for: .normal)
        loginButton.titleLabel?.font = UIFont(name: "FiraGO-Medium", size: 11)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitleColor(.systemBlue, for: .normal)
        loginButton.backgroundColor = UIColor(red: 56/255, green: 136/255, blue: 255/255, alpha: 1.0)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 22
        addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            photoButton.widthAnchor.constraint(equalToConstant: 132),
            photoButton.heightAnchor.constraint(equalToConstant: 132),
            photoButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 80),
            photoButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            usernameTextField.heightAnchor.constraint(equalToConstant: 45),
            passwordTextField.heightAnchor.constraint(equalToConstant: 45),
            repeatPasswordTextField.heightAnchor.constraint(equalToConstant: 45),
            
            formStackView.topAnchor.constraint(equalTo: photoButton.bottomAnchor, constant: 47),
            formStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            formStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            loginButton.topAnchor.constraint(equalTo: formStackView.bottomAnchor, constant: 50),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            loginButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
}
