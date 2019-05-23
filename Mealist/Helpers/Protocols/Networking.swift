//
//  Networking.swift
//  Mealist
//
//  Created by Németh Barna on 2019. 05. 21..
//  Copyright © 2019. Levente Dimény. All rights reserved.
//

import Foundation
import PromiseKit
import CoreLocation

protocol Networking {
    func register(email: String, password: String) -> Promise<AuthenticationResponse>
    func login(email: String, password: String) -> Promise<AuthenticationResponse>
    func requestForgottenPasswordEmail(to email: String) -> Promise<Void?>
    func getRestaurants(near location: CLLocationCoordinate2D, authenticationToken: String) -> Promise<[Restaurant]>
    func getCategories(authenticationToken: String) -> Promise<[RestaurantCategory]>
    func getMenu(for restaurant: Restaurant, authenticationToken: String) -> Promise<[Dish]>
    func getReviews(for restaurant: Restaurant, authenticationToken: String) -> Promise<[Review]>
    func sendReview(for restaurant: Restaurant, stars: Int, reviewText: String, authenticationToken: String) -> Promise<Void?>
    func getUserData(authenticationToken: String) -> Promise<UserData>
    func editUserData(_ userData: UserData, authenticationToken: String) -> Promise<Void?>
    func editDeliveryDetails(_ deliveryDetails: DeliveryDetails, authenticationToken: String) -> Promise<Void?>
    func sendOrder(with dishes: [OrderItem], paymentDetails: PaymentDetails, authenticationToken: String) -> Promise<Void?>
    func logout(authenticationToken: String) -> Promise<Void?>
}
