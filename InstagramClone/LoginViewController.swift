import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Log In"
        setupUI()
    }

    private func setupUI() {
        // Placeholder for UI elements
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false

        let emailTextField = UITextField()
        emailTextField.placeholder = "Email or Username"
        emailTextField.borderStyle = .roundedRect
        emailTextField.keyboardType = .emailAddress

        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true

        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Log In", for: .normal)
        loginButton.backgroundColor = .systemBlue
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 5
        loginButton.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true

        let registerButton = UIButton(type: .system)
        registerButton.setTitle("Don't have an account? Sign Up", for: .normal)
        registerButton.setTitleColor(.systemBlue, for: .normal)
        registerButton.addTarget(self, action: #selector(didTapRegister), for: .touchUpInside)

        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
        stackView.addArrangedSubview(registerButton)

        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }

    @objc private func didTapLogin() {
        print("Login tapped")
        // Authentication logic will go here
    }

    @objc private func didTapRegister() {
        print("Register tapped")
        // Navigate to registration screen
    }
}
