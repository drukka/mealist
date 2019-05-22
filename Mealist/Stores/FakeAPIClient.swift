//
//  FakeAPIClient.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation
import PromiseKit
import CoreLocation

class FakeAPIClient: Networking {
    
    // MARK: - Properties
    
    private let mockUser = UserData(id: 1, email: "mock@test.com", firstname: "Mock", lastname: "Test", profilePicture: nil, deliveryDetails: nil)
    private let mockAuthenticationToken: String = "mockAuthToken"
    private let mockEmail: String = "mock@test.com"
    private let mockPassword: String = "Aa12345"
    private let mockRestaurantList: [Restaurant] = [
        Restaurant(id: 1, name: "Don Pepe Óbuda", latitude: 47.542403, longitude: 19.040298, address: "Budapest, Flórián tér 13", coverPhotos: [], category: RestaurantCategory(id: 1, name: "Pizza", image: ""))
    ]
    private let mockCategoryList: [RestaurantCategory] = [
        RestaurantCategory(id: 1, name: "Pizza", image: ""),
        RestaurantCategory(id: 2, name: "Fast food", image: "")
    ]
    private let mockMenu: [Dish] = [
        Dish(id: 1, name: "Mexican pizza", description: "asdasdas", image: nil, price: 1290.0)
    ]
    
    // MARK: - Public methods
    
    func register(email: String, password: String) -> Promise<AuthenticationResponse> {
        if email.contains("@") {
            return Promise.value(AuthenticationResponse(authenticationToken: self.mockAuthenticationToken, userData: self.mockUser))
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
    
    func login(email: String, password: String) -> Promise<AuthenticationResponse> {
        if email == self.mockEmail && password == self.mockPassword {
            return Promise.value(AuthenticationResponse(authenticationToken: self.mockAuthenticationToken, userData: self.mockUser))
        }
    }
    
    func requestForgottenPasswordEmail(to email: String) -> Promise<Void?> {
        if email == self.mockEmail {
            return Promise.value(nil)
        }
        return Promise(error: NetworkingError.serviceError(.notFound))
    }
    
    func getRestaurants(near location: CLLocationCoordinate2D, authenticationToken: String) -> Promise<[Restaurant]> {
        if authenticationToken == self.mockAuthenticationToken {
            return Promise.value(self.mockRestaurantList)
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
    
    func getCategories(authenticationToken: String) -> Promise<[RestaurantCategory]> {
        if authenticationToken == self.mockAuthenticationToken {
            return Promise.value(self.mockCategoryList)
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
    
    func getMenu(for restaurant: Restaurant, authenticationToken: String) -> Promise<[Dish]> {
        if authenticationToken == self.mockAuthenticationToken {
            return Promise.value(self.mockMenu)
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
    
    func getReviews(for restaurant: Restaurant, authenticationToken: String) -> Promise<[Review]> {
        if authenticationToken == self.mockAuthenticationToken {
            return Promise.value([])
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
    
    func sendReview(for restaurant: Restaurant, stars: Int, reviewText: String, authenticationToken: String) -> Promise<Void?> {
        if authenticationToken == self.mockAuthenticationToken {
            return Promise.value(nil)
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
    
    func getUserData(authenticationToken: String) -> Promise<UserData> {
        if authenticationToken == self.mockAuthenticationToken {
            return Promise.value(self.mockUser)
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
    
    func editUserData(_ userData: UserData, authenticationToken: String) -> Promise<Void?> {
        if authenticationToken == self.mockAuthenticationToken {
            return Promise.value(nil)
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
    
    func editDeliveryDetails(_ deliveryDetails: DeliveryDetails, authenticationToken: String) -> Promise<Void?> {
        if authenticationToken == self.mockAuthenticationToken {
            return Promise.value(nil)
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
    
    func sendOrder(with dishes: [OrderItem], paymentDetails: PaymentDetails, authenticationToken: String) -> Promise<Void?> {
        if authenticationToken == self.mockAuthenticationToken {
            return Promise.value(nil)
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
    
    func logout(authenticationToken: String) -> Promise<Void?> {
        if authenticationToken == self.mockAuthenticationToken {
            return Promise.value(nil)
        }
        return Promise(error: NetworkingError.serviceError(.unauthorized))
    }
}
