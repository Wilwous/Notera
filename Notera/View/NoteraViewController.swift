//
//  NoteraViewController.swift
//  Notera
//
//  Created by Антон Павлов on 01.08.2024.
//

import UIKit

final class NoteraViewController: UIViewController {
    
    // MARK: - UI Components
    
    private lazy var emptyState: UILabel = {
        let stub = UILabel()
        stub.text = "У вас ещё нет заметок"
        stub.font = .systemFont(ofSize: 17)
        stub.textColor = .black
        stub.textAlignment = .center
        
        return stub
    }()
    
    private lazy var newNoteButton: UIButton = {
        let button = UIButton()
        button.setTitle("+ Новая заметка", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 16
        button.addTarget(
            self,
            action: #selector(newNoteButtonTapped),
            for: .touchUpInside
        )
        
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addElements()
        layoutConstraint()
    }
    
    // MARK: - Setup View
    
    private func addElements() {
        [emptyState,
         newNoteButton
        ].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
    }
    
    private func layoutConstraint() {
        NSLayoutConstraint.activate([
            emptyState.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emptyState.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            newNoteButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            newNoteButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            newNoteButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -48),
            newNoteButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
    // MARK: - Action
    
    @objc private func newNoteButtonTapped() {
        // TODO: логика перехода создания заметки
    }
}

