
import UIKit

class RegisterViewController: UIViewController {
    
    var titleLabel = UILabel()
    
    var logLabel = UILabel()
    var logTextField = UITextField()
    var logLine = UIView()
    
    var numLabel = UILabel()
    var numTextField = UITextField()
    var numLine = UIView()
    
    var pasLabel = UILabel()
    var pasTextField = UITextField()
    var pasLine = UIView()
    
    var repPasLabel = UILabel()
    var repPasTextField = UITextField()
    var repPasLine = UIView()
    
    var checkmarkButton = UIButton()
    var checkmarkLabel = UILabel()
    
    var regButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        keyboardSetting()
        addSubviewElements()
        setupElements()
    }
    
    private func keyboardSetting() {
        let hideAction = UITapGestureRecognizer(target: self, action: #selector(hideKeyBoard))
        view.addGestureRecognizer(hideAction)
        reloadInputViews()
    }
    
    @objc func hideKeyBoard() {
        view.endEditing(true)
    }
    
    private func addSubviewElements(){
        view.addSubview(titleLabel)
        view.addSubview(logLabel)
        view.addSubview(logTextField)
        view.addSubview(logLine)
        view.addSubview(pasLabel)
        view.addSubview(pasTextField)
        view.addSubview(pasLine)
        view.addSubview(repPasLabel)
        view.addSubview(repPasTextField)
        view.addSubview(repPasLine)
        view.addSubview(numLabel)
        view.addSubview(numTextField)
        view.addSubview(numLine)
        view.addSubview(checkmarkLabel)
        view.addSubview(checkmarkButton)
        view.addSubview(regButton)
    }
    
    private func setupElements() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        logLabel.translatesAutoresizingMaskIntoConstraints = false
        logTextField.translatesAutoresizingMaskIntoConstraints = false
        logLine.translatesAutoresizingMaskIntoConstraints = false
        numLabel.translatesAutoresizingMaskIntoConstraints = false
        numTextField.translatesAutoresizingMaskIntoConstraints = false
        numLine.translatesAutoresizingMaskIntoConstraints = false
        pasLabel.translatesAutoresizingMaskIntoConstraints = false
        pasTextField.translatesAutoresizingMaskIntoConstraints = false
        pasLine.translatesAutoresizingMaskIntoConstraints = false
        repPasLabel.translatesAutoresizingMaskIntoConstraints = false
        repPasTextField.translatesAutoresizingMaskIntoConstraints = false
        repPasLine.translatesAutoresizingMaskIntoConstraints = false
        checkmarkLabel.translatesAutoresizingMaskIntoConstraints = false
        checkmarkButton.translatesAutoresizingMaskIntoConstraints = false
        regButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupTitle() {
        
    }
}
