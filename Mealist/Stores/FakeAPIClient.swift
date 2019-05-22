//
//  FakeAPIClient.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation

class FakeAPIClient: Networking {
    
    // MARK: - Properties
    
    private let mockUser = UserData(id: 1, email: "mock@test.com", firstname: "Mock", lastname: "Test", profilePicture: nil, deliveryDetails: nil)
    private let mockAuthenticationToken: String = "mockAuthToken"
    private let mockPassword: String = "Aa12345"
    
    // MARK: - Public methods
    
    func register(email: String, password: String) -> Promise<AuthenticationResponse> {
        
    }
    
    func login(email: String, password: String) -> Promise<AuthenticationResponse> {
        <#code#>
    }
    
    func requestForgottenPasswordEmail(to email: String) -> Promise<Void?> {
        <#code#>
    }
    
    func getRestaurants(near location: CLLocationCoordinate2D, authenticationToken: String) -> Promise<[Restaurant]> {
        <#code#>
    }
    
    func getCategories(authenticationToken: String) -> Promise<[RestaurantCategory]> {
        <#code#>
    }
    
    func getMenu(for restaurant: Restaurant, authenticationToken: String) -> Promise<[Dish]> {
        <#code#>
    }
    
    func getReviews(for restaurant: Restaurant, authenticationToken: String) -> Promise<[Review]> {
        <#code#>
    }
    
    func sendReview(for restaurant: Restaurant, stars: Int, reviewText: String) -> Promise<Void?> {
        <#code#>
    }
    
    func getUserData(authenticationToken: String) -> Promise<UserData> {
        <#code#>
    }
    
    func editUserData(_ userData: UserData, authenticationToken: String) -> Promise<Void?> {
        <#code#>
    }
    
    func editDeliveryDetails(_ deliveryDetails: DeliveryDetails, authenticationToken: String) -> Promise<Void?> {
        <#code#>
    }
    
    func sendOrder(with dishes: [OrderItem], paymentDetails: PaymentDetails, authenticationToken: String) -> Promise<Void?> {
        <#code#>
    }
    
    func logout(authenticationToken: String) -> Promise<Void?> {
        <#code#>
    }
}
