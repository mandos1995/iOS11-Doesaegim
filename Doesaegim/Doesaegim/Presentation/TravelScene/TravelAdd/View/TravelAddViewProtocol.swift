//
//  TravelAddViewProtocol.swift
//  Doesaegim
//
//  Created by 김민석 on 2022/11/16.
//

import Foundation

protocol TravelAddViewProtocol: AnyObject {
    var delegate: TravelAddViewDelegate? { get set }
    
    var isValidTextField: Bool { get set }
    var isValidDate: Bool { get set }
    var isValidInput: Bool { get set }
    
    func travelTitleDidChanged(title: String?)
    func travelDateTapped(dates: [Date], completion: @escaping ((Bool) -> Void))
    
    func postTravel(travel: TravelDTO, completion: @escaping (() -> Void))
}

protocol TravelAddViewDelegate: AnyObject {
    func travelAddFormDidChange(isValid: Bool)
    func backButtonDidTap(isClear: Bool)
}
