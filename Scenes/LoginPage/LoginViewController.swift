//
//  ViewController.swift
//  UIKit_SwiftUI_Collab
//
//  Created by Sesili Tsikaridze on 11.01.24.
//

//import UIKit
//import Firebase
//
//class LoginViewController: UIViewController {
//
//    // MARK: - Properties
//    private let emailTextField = CustomUITextField(placeholder: "Email")
//    private let passwordTextField = CustomUITextField(placeholder: "Password")
//    private let loginButton = CustomUIButton(title: "Login", hasBackground: true, fontSize: .medium)
//
//    // MARK: - Lifecycle
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupUI()
//    }
//
//    // MARK: - UI Setup
//    private func setupUI() {
//        view.backgroundColor = .white
//
//        
//        view.addSubview(emailTextField)
//        view.addSubview(passwordTextField)
//        view.addSubview(loginButton)
//
//        
//
//        NSLayoutConstraint.activate([
//            emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
//            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//
//            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
//            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//
//            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
//            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
//        ])
//
//        
//        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
//    }
//
//    // MARK: - Actions
//    @objc private func loginButtonTapped() {
//        guard let email = emailTextField.text, let password = passwordTextField.text else {
//            
//            return
//        }
//
//        
//        Auth.auth().signIn(withEmail: email, password: password) { [weak self] (result, error) in
//            if let error = error {
//                
//                print("Authentication failed: \(error.localizedDescription)")
//                
//            } else {
//                print("ragaca")
////                self?.navigateToNextScreen()
//            }
//        }
//    }
//
////    private func navigateToNextScreen() {
////       
////        let nextViewController =
////        navigationController?.pushViewController(nextViewController, animated: true)
////    }
//}
//
//




import UIKit
import Firebase

class LoginViewController: UIViewController {
    

    // MARK: - IBOutlets
    private let emailTextField = CustomUITextField(placeholder: "Email")
    private let passwordTextField = CustomUITextField(placeholder: "Password")
    private let loginButton = CustomUIButton(title: "Login", hasBackground: true, fontSize: .medium)
//    @IBOutlet private weak var emailTextField: CustomUITextField!
//    @IBOutlet private weak var passwordTextField: CustomUITextField!
//    @IBOutlet private weak var loginButton: CustomUIButton!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - UI Setup
    private func setupUI() {
        
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }

    // MARK: - Actions
    @objc private func loginButtonTapped() {
        guard let email = emailTextField.text, let password = passwordTextField.text else {
            
            return
        }

        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] (result, error) in
            if let error = error {
                                print("Authentication failed: \(error.localizedDescription)")
                
            } else {
                print("ragaca")
//                self?.navigateToNextScreen()
            }
        }
    }

    private func navigateToNextScreen() {
        let storyboard = UIStoryboard(name: "YourStoryboardName", bundle: nil)
        if let nextViewController = storyboard.instantiateViewController(withIdentifier: "YourViewControllerIdentifier") as? LoginViewController {
           
            navigationController?.pushViewController(nextViewController, animated: true)
        }
    }
}
