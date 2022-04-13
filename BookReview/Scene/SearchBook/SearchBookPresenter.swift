//
//  SearchBookPresenter.swift
//  BookReview
//
//  Created by 노민경 on 2022/04/13.
//

import UIKit

protocol SearchBookProtocol {
    func setupViews()
    func dismiss()
}

class SearchBookPresenter: NSObject {
    private let viewController: SearchBookProtocol
    
    init(viewController: SearchBookProtocol) {
        self.viewController = viewController
    }
    
    func viewDidLoad() {
        viewController.setupViews()
    }
}

extension SearchBookPresenter: UISearchBarDelegate {
    
}

extension SearchBookPresenter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewController.dismiss()
    }
}

extension SearchBookPresenter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath)"
        
        return cell
    }
    
    
}
