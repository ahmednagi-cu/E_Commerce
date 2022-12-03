//
//  SingupVC.swift
//  Main_E_Commerce_
//
//  Created by ahmed nagi on 24/11/2022.
//

import UIKit

class SingupVC: UIViewController {
// MARK: - Properties
    lazy var scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
    private let titleLbl: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Sing up"
        title.textColor = .black
        title.font = .systemFont(ofSize: 34, weight: .regular)
        return title
    }()
    private let namTxtField: UITextField = {
        return UITextField().textFiels(with: "Name", isSecuirtyTextEntry: false)
    }()
    private let emailTxtField: UITextField = {
        return UITextField().textFiels(with: "Email", isSecuirtyTextEntry: false)
    }()
    private let passwordTxtField: UITextField = {
        return UITextField().textFiels(with: "Password", isSecuirtyTextEntry: true)
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [namTxtField,emailTxtField,passwordTxtField])
        stack.distribution = .fillEqually
        stack.spacing = 15
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
         return stack
    }()
    
    private let alreadyhaveanaccountBtn: UIButton = {
        let button = UIButton()
        button.setTitle("Already have an account?", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12, weight: .regular)
        button.titleLabel?.textAlignment = .right
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let signupBtn: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sing up", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(named: "btncolor")
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        return button
    }()
    
    private let socialAccountLbl: UILabel = {
        let txt = UILabel()
        txt.text = "Or Sing Up With Social account"
        txt.textColor = .black
        txt.font = .systemFont(ofSize: 16, weight: .regular)
        txt.textAlignment = .center
        txt.translatesAutoresizingMaskIntoConstraints = false
        return txt
    }()
    
    private let googleBtn: UIButton = {
      let button = UIButton()
        button.setImage(UIImage(named: "google"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 18).isActive = true
        button.widthAnchor.constraint(equalToConstant: 22).isActive = true
        return button
    }()
    private let facebookBtn: UIButton = {
      let button = UIButton()
        button.setImage(UIImage(named: "facebook"), for: .normal)
        button.heightAnchor.constraint(equalToConstant: 18).isActive = true
        button.widthAnchor.constraint(equalToConstant: 18).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var stackImage: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [googleBtn,facebookBtn])
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .center
        stack.distribution = .fillProportionally
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigUI()
        ConfigConstraint()
       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.addSubview(scrollView)
        scrollView.backgroundColor = UIColor(named: "Maincolor")
        scrollView.contentSize = CGSize(width: view.frame.width, height: 1000 )
        let screenHeight = UIScreen.main.bounds.height
        print(screenHeight)
        if screenHeight <= 667.0 {
            scrollView.isScrollEnabled = true
            scrollView.showsVerticalScrollIndicator = false
        }else {
            scrollView.isScrollEnabled = false
           
        }
        
    }


// MARK: - Helper functions
    private func ConfigUI(){
        view.backgroundColor = UIColor(named: "Maincolor")
        scrollView.addSubview(titleLbl)
        scrollView.addSubview(stackView)
        scrollView.addSubview(alreadyhaveanaccountBtn)
        scrollView.addSubview(signupBtn)
        scrollView.addSubview(socialAccountLbl)
        scrollView.addSubview(stackImage)
       
    }
    private func ConfigConstraint(){
        let titleLblConstraint = [
            titleLbl.topAnchor.constraint(equalTo: scrollView.topAnchor,constant: 150),
            titleLbl.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor,constant: 20)
        ]
       let stackConstraint = [
           stackView.topAnchor.constraint(equalTo: titleLbl.bottomAnchor,constant: 70),
           stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor,constant: 20),
           stackView.widthAnchor.constraint(equalToConstant: scrollView.frame.width - 40),
         
        ]
        let alreadyhaveanaccountBtnConstraint = [
            alreadyhaveanaccountBtn.topAnchor.constraint(equalTo: stackView.bottomAnchor,constant: 15),
            alreadyhaveanaccountBtn.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            alreadyhaveanaccountBtn.widthAnchor.constraint(equalToConstant: 150)
        ]
        
        let signupBtnConstaint = [
            signupBtn.topAnchor.constraint(equalTo: alreadyhaveanaccountBtn.bottomAnchor,constant: 100),
            signupBtn.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            signupBtn.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            signupBtn.heightAnchor.constraint(equalToConstant: 40)
        ]
        let socialAccountLblConstraint = [
            socialAccountLbl.topAnchor.constraint(equalTo: signupBtn.bottomAnchor,constant: 100),
            socialAccountLbl.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ]
        let stackImageConstarint = [
            stackImage.topAnchor.constraint(equalTo: socialAccountLbl.bottomAnchor,constant: 30),
            stackImage.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
        ]
        NSLayoutConstraint.activate(titleLblConstraint)
        NSLayoutConstraint.activate(stackConstraint)
        NSLayoutConstraint.activate(alreadyhaveanaccountBtnConstraint)
        NSLayoutConstraint.activate(signupBtnConstaint)
        NSLayoutConstraint.activate(socialAccountLblConstraint)
        NSLayoutConstraint.activate(stackImageConstarint)
    }

}
