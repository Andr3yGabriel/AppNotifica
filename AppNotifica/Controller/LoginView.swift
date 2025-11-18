//
//  LoginView.swift
//  AppNotifica
//
//  Created by Andrey Goncalves on 18/11/25.
//

import Foundation
import UIKit

class LoginView: UIView {
    // Construtor da View
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupVisualElements()
    }
    
    // Cria a imagem do login
    var imageLogin: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logo-login")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
       
        return image
    }()
    
    // Cria a label abaixo da imagem do login
    var imageLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Ligt", size: 16)
        label.text = "Registre e gerencie as ocorrências do seu IF"
        label.translatesAutoresizingMaskIntoConstraints = false
       
        return label
    }()
    
    // Cria o campo de inserir e-mail
    var emailTextField: UITextField = {
        let textField = UITextField()
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.placeholder = "E-mail"
        textField.translatesAutoresizingMaskIntoConstraints = false
       
        return textField
    }()
    
    // Cria o campo de inserir senha
    var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.placeholder = "Senha"
        textField.translatesAutoresizingMaskIntoConstraints = false
       
        return textField
    }()
    
    let underlineViewEmail: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let underlineViewPassword: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    // Cria o botão de login
    var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("LOGAR", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
       
        return button
    }()
    
    // Cria o botão de registro
    var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("REGISTRAR", for: .normal)
        button.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
       
        return button
    }()
    
    // Função para inserir os elemetos visuais na View
    func setupVisualElements() {
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        self.addSubview(registerButton)
        self.addSubview(underlineViewEmail)
        self.addSubview(underlineViewPassword)
        
        NSLayoutConstraint.activate([
            imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            underlineViewEmail.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 5),
            underlineViewEmail.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            underlineViewEmail.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            underlineViewEmail.heightAnchor.constraint(equalToConstant: 1),
            
            passwordTextField.widthAnchor.constraint(equalToConstant: 374),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            underlineViewPassword.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 5),
            underlineViewPassword.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            underlineViewPassword.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            underlineViewPassword.heightAnchor.constraint(equalToConstant: 1),
            
            loginButton.widthAnchor.constraint(equalToConstant: 374),
            loginButton.heightAnchor.constraint(equalToConstant: 60),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25),
            loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            registerButton.widthAnchor.constraint(equalToConstant: 374),
            registerButton.heightAnchor.constraint(equalToConstant: 60),
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 25),
            registerButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            registerButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
