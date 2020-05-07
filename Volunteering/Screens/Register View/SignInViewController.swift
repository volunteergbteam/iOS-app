
import UIKit

class SignInViewController: UIViewController {
    
    var logoView = UIImageView()
    var loginLabel = UILabel()
    var passwordLabel = UILabel()
    var loginTextField = UITextField()
    var passwordTextField = UITextField()
    var restoreLabel = UILabel()
    var logInButton = UIButton()
    var registerButton = UIButton()
    var restoreButton = UIButton()

    var firstLineView = UIView()
    var secondLineView = UIView()
    var logLineView = UIView()
    var pasLineView = UIView()
    
    var shadowLogView = UIView()
    var shadowRegView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        keyboardSetting()
        addSubviewElements()
        setupElements()
        
        setupLogo()
        setupLoginLabel()
        setupLoginField()
        setupLineLog()
        setupPasswordLabel()
        setupPasswordField()
        setupLinePas()
        setupRestoreButton()
        setupShadowLogView()
        setupLogInButton()
        setupRestoreLabel()
        setupFirstLine()
        setupSecondLine()
        setupShadowPasView()
        setupRegisterButton()
    }
    
    private func addSubviewElements() {
        view.addSubview(logoView)
        view.addSubview(loginLabel)
        view.addSubview(passwordLabel)
        view.addSubview(loginTextField)
        view.addSubview(logLineView)
        view.addSubview(passwordTextField)
        view.addSubview(pasLineView)
        view.addSubview(restoreLabel)
        view.addSubview(shadowLogView)
        view.addSubview(logInButton)
        view.addSubview(shadowRegView)
        view.addSubview(registerButton)
        view.addSubview(restoreButton)
        view.addSubview(firstLineView)
        view.addSubview(secondLineView)
    }
    
    private func keyboardSetting() {
        let hideAction = UITapGestureRecognizer(target: self, action: #selector(hideKeyBoard))
        view.addGestureRecognizer(hideAction)
        reloadInputViews()
    }
    
    @objc func hideKeyBoard() {
        view.endEditing(true)
    }
    
    private func setupElements() {
        logoView.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        restoreLabel.translatesAutoresizingMaskIntoConstraints = false
        shadowLogView.translatesAutoresizingMaskIntoConstraints = false
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        shadowRegView.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        restoreButton.translatesAutoresizingMaskIntoConstraints = false
        firstLineView.translatesAutoresizingMaskIntoConstraints = false
        logLineView.translatesAutoresizingMaskIntoConstraints = false
        pasLineView.translatesAutoresizingMaskIntoConstraints = false
        secondLineView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupLogo() {
        logoView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -80).isActive = true
        logoView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80).isActive = true
        logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        logoView.image = UIImage(named: "logo")
        logoView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func setupLoginLabel() {
        loginLabel.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 60).isActive = true
        loginLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        loginLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        loginLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        loginLabel.font = UIFont.systemFont(ofSize: 15)
        loginLabel.textColor = .systemBlue
        loginLabel.text = "Ваш E-mail"
    }
    
    func setupLoginField() {
        loginTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 0).isActive = true
        loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        loginTextField.backgroundColor = .clear
        loginTextField.textColor = .darkGray
        loginTextField.tintColor = .darkGray
        loginTextField.font = UIFont.systemFont(ofSize: 20)
        loginTextField.textAlignment = .left
    }
    
    func setupLineLog() {
        logLineView.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 0).isActive = true
        logLineView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        logLineView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        logLineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        logLineView.alpha = 0.7
        
        logLineView.backgroundColor = .black
    }
    
    func setupPasswordLabel() {
        passwordLabel.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 5).isActive = true
        passwordLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        passwordLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        passwordLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        passwordLabel.font = UIFont.systemFont(ofSize: 15)
        passwordLabel.textColor = .systemBlue
        passwordLabel.text = "Ваш пароль"
    }
    
    func setupPasswordField() {
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 0).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        passwordTextField.backgroundColor = .clear
        passwordTextField.textColor = .darkGray
        passwordTextField.tintColor = .darkGray
        passwordTextField.font = UIFont.systemFont(ofSize: 20)
        passwordTextField.textAlignment = .left
    }
    
    func setupLinePas() {
        pasLineView.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 0).isActive = true
        pasLineView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        pasLineView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        pasLineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        pasLineView.alpha = 0.7
        
        pasLineView.backgroundColor = .black
    }
    
    func setupRestoreButton() {
        restoreButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor).isActive = true
        restoreButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 260).isActive = true
        restoreButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        restoreButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        restoreButton.backgroundColor = .clear
        restoreButton.alpha = 0.4
        restoreButton.setTitle("не помню", for: .normal)
        restoreButton.setTitleColor(.darkGray, for: .normal)
        restoreButton.addTarget(self, action: #selector(restoreAction(_:)), for: .touchUpInside)
    }
    
    func setupShadowLogView() {
        shadowLogView.topAnchor.constraint(equalTo: restoreButton.bottomAnchor, constant: 52).isActive = true
        shadowLogView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 42).isActive = true
        shadowLogView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -42).isActive = true
        shadowLogView.heightAnchor.constraint(equalToConstant: 57).isActive = true
        
        
        shadowLogView.backgroundColor = .systemGreen
        shadowLogView.layer.shadowColor = UIColor.systemGreen.cgColor
        shadowLogView.layer.shadowOpacity = 3
        shadowLogView.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
        shadowLogView.layer.shadowRadius = 4
        
        shadowLogView.clipsToBounds = false
    }
    
    func setupLogInButton() {
        logInButton.topAnchor.constraint(equalTo: restoreButton.bottomAnchor, constant: 50).isActive = true
        logInButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        logInButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        logInButton.backgroundColor = .systemGreen
        logInButton.setTitle("ВОЙТИ", for: .normal)
        logInButton.setTitleColor(.white, for: .normal)
        logInButton.layer.cornerRadius = 5
        logInButton.clipsToBounds = true
        // хочу размер сделать, пока не знаю как, но исправлю
        logInButton.addTarget(self, action: #selector(logInAction(_:)), for: .touchUpInside)
        
    }
    
    func setupRestoreLabel() {
        restoreLabel.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 150).isActive = true
        restoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        restoreLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        restoreLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        restoreLabel.font = UIFont.boldSystemFont(ofSize: 17)
        restoreLabel.alpha = 0.8
        restoreLabel.textColor = .darkGray
        restoreLabel.textAlignment = .center
        restoreLabel.text = "Нету аккаунта?"
    }
    
    func setupFirstLine() {
        firstLineView.centerYAnchor.constraint(equalTo: restoreLabel.centerYAnchor).isActive = true
        firstLineView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        firstLineView.rightAnchor.constraint(equalTo: restoreLabel.leftAnchor, constant: 25).isActive = true
        firstLineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        firstLineView.backgroundColor = .black
    }
    
    func setupSecondLine() {
        secondLineView.centerYAnchor.constraint(equalTo: restoreLabel.centerYAnchor).isActive = true
        secondLineView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        secondLineView.leftAnchor.constraint(equalTo: restoreLabel.rightAnchor, constant: -25).isActive = true
        secondLineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        secondLineView.backgroundColor = .black
    }
    
    func setupShadowPasView() {
        shadowRegView.topAnchor.constraint(equalTo: restoreLabel.bottomAnchor, constant: 22).isActive = true
        shadowRegView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 42).isActive = true
        shadowRegView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -42).isActive = true
        shadowRegView.heightAnchor.constraint(equalToConstant: 57).isActive = true
        
        shadowRegView.backgroundColor = .systemBlue
        shadowRegView.layer.shadowColor = UIColor.systemBlue.cgColor
        shadowRegView.layer.shadowOpacity = 3
        shadowRegView.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
        shadowRegView.layer.shadowRadius = 4
        
        shadowRegView.clipsToBounds = false
    }
    
    func setupRegisterButton() {
        registerButton.topAnchor.constraint(equalTo: restoreLabel.bottomAnchor, constant: 20).isActive = true
        registerButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        registerButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        registerButton.backgroundColor = .systemBlue
        registerButton.setTitle("ЗАРЕГИСТРИРОВАТЬСЯ", for: .normal)
        registerButton.setTitleColor(.white, for: .normal)
        // хочу размер сделать, пока не знаю как, но исправлю
        registerButton.layer.cornerRadius = 5
        registerButton.clipsToBounds = true
        registerButton.addTarget(self, action: #selector(registerAction(_:)), for: .touchUpInside)
        
        let shadow = UIView(frame: registerButton.frame)
        shadow.backgroundColor = .blue
        registerButton.addSubview(shadow)
    }
    

}

extension SignInViewController {
    
    @objc func logInAction(_ sender: UIButton!) {
        // fix me
        print("Oyy press me log")
    }
    
    @objc func restoreAction(_ sender: UIButton!) {
        // сделаю потом дальнейшие действия по переходну на другой экран
        // пока загулушка
        // fix me
        print("Oyy press me restore")
    }
    
    @objc func registerAction(_ sender: UIButton!) {
        // fix me
        print("Oy press me register")
    }
    
}
