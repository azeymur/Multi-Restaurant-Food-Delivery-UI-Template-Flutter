import 'package:flutter/material.dart';

class Locals {
  Locals(this.locale);

  final Locale locale;

  static Locals of(BuildContext context) {
    return Localizations.of<Locals>(context, Locals)!;
  }

  static const _localizedValues = <String, Map<String, String>>{
    'en': {
      'ZeymurFoodDelivery': 'Zeymur Food Delivery',
      'EnterSearchTerm': 'Enter search term',
      'Home': 'Home',
      'Basket': 'Basket',
      'MyAccount': 'My Account',
      'Ok': 'OK',
      'Cancel': 'Cancel',
      'Total': 'Total',
      'Checkout': 'Checkout',
      'ShoppingBasket': 'Shopping Basket',
      'YourBasketEmpty': 'Your basket is empty.',
      'Favorites': 'Favorites',
      'Orders': 'Orders',
      'Addresses': 'Addresses',
      'ChangePassword': 'Change Password',
      'Shipping': 'Shipping',
      'GrandTotal': 'Grand Total',
      'Title': 'Title',
      'FirstName': 'First Name',
      'LastName': 'Last Name',
      'Company': 'Company',
      'AddressLine1': 'Address Line 1',
      'AddressLine2': 'Address Line 2',
      'City': 'City',
      'State': 'State',
      'PostCode': 'Post Code',
      'Country': 'Country',
      'Phone': 'Phone',
      'Save': 'Save',
      'FullName': 'Full Name',
      'Username': 'Username',
      'Email': 'Email',
      'CurrentPassword': 'Current Password',
      'NewPassword': 'New Password',
      'ConfirmNewPassword': 'Confirm New Password',
      'WelcomeLogIn': 'Welcome Back, Log In!',
      'Password': 'Password',
      'RememberMe': 'Remember Me',
      'ForgotPassword': 'Forgot Password',
      'DontHaveAccount': 'Don\'t have an coount? ',
      'SignUp': 'Sign Up',
      'LogIn': 'Log In',
      'HelloSignUp': 'Hello, Sign Up!',
      'ConfirmPassword': 'Confirm Password',
      'ByClickingSignUp': 'By clicking Sign Up you are in agreement of the',
      'TermsConditions': ' Terms and Conditions.',
      'AlreadyHaveAccount': 'Already have an account? ',
      'ResetMyPassword': 'Reset My Password',
      'PleaseTypeYourEmail':
          'Please type your email then tap the Submit button. We will send an email to reset your password.',
      'Submit': 'Submit',
      'ShowReviews': 'ShowReviews',
      'RelatedItems': 'Related Items',
      'AddCart': 'Add to Cart',
      'AddBasket': 'Add to Basket',
      'YourRating': 'Your Rating',
      'YourReviewOptional': 'Your Review (Optional)',
      'Add': 'Add',
      'Edit': 'Edit',
      'NoItems': 'No items to display.',
      'Payment': 'Payment',
      'Congratulations': 'Congratulations!',
      'YourOrderReceived': 'Your order has been successfully received.',
      'Continue': 'Continue',
      'CardOwnersName': 'Card Owner\'s Name',
      'CardNumber': 'Card Number',
      'Month': 'Month',
      'Year': 'Year',
      'Cvc': 'CVC',
      'ShipTo': 'Ship to ',
      'CompleteOrder': 'Complete Order',
      'LogOut': 'Log Out',
      'AccountDetails': 'Account Details',
      'Question': 'Question',
      'No': 'No',
      'Yes': 'Yes',
      'DoYouWantDeleteAddress': 'Do you want to delete this address?',
      'DoYouWantDeleteAllItems': 'Do you want to delete all items?',
      'ShippingAddress': 'Shipping Address',
      'NewRating': 'New Rating',
      'Ratings': 'Ratings',
      'Retry': 'Retry',
      'Error': 'Error',
      'Info': 'Info',
      'EditPhotoTapped': 'Edit photo tapped.',
      'SortBy': 'Sort by',
      'ShortenCurrency': '{0:F2}',
      'Recent': 'Recent',
      'Popular': 'Popular',
      'Favorite': 'Favorite',
      'SeeAll': 'See All',
      'Places': 'Places',
      'Placed': 'Placed',
      'Processing': 'Processing',
      'OnTheWay': 'OnTheWay',
      'Delivered': 'Delivered',
      'Cancelled': 'Cancelled',
      'Loading': 'Loading...',
      'NewAddress': 'New Address',
      'AddressDetail': 'Address Detail',
      'TermsTapped': 'Terms and conditions tapped.',
      'YouMustSelectAddress': 'You must select an address to continue.',
      'RecentSearches': 'Recent Searches',
      'OrderDetail': 'Order Detail',
      'Min.': 'min.',
      'Default': 'Default',
      'NameAz': 'Name (A-Z)',
      'NameZa': 'Name (Z-A)',
      'HighestRate': 'Highest Rate',
      'RateCount': 'Rate Count',
      'Search': 'Search',
      'PlaceDetail': 'Place Detail',
    },
    /* 
    To add more language support
    'es': {
      'title': 'Hola Mundo',
    },
    */
  };

  static List<String> languages() {
    return _localizedValues.keys.toList();
  }

  String get appName {
    return _localizedValues[locale.languageCode]!['ZeymurFoodDelivery']!;
  }

  String get enterSearchTerm {
    return _localizedValues[locale.languageCode]!['EnterSearchTerm']!;
  }

  String get home {
    return _localizedValues[locale.languageCode]!['Home']!;
  }

  String get basket {
    return _localizedValues[locale.languageCode]!['Basket']!;
  }

  String get myAccount {
    return _localizedValues[locale.languageCode]!['MyAccount']!;
  }

  String get ok {
    return _localizedValues[locale.languageCode]!['Ok']!;
  }

  String get cancel {
    return _localizedValues[locale.languageCode]!['Cancel']!;
  }

  String get total {
    return _localizedValues[locale.languageCode]!['Total']!;
  }

  String get checkout {
    return _localizedValues[locale.languageCode]!['Checkout']!;
  }

  String get shoppingBasket {
    return _localizedValues[locale.languageCode]!['ShoppingBasket']!;
  }

  String get yourBasketEmpty {
    return _localizedValues[locale.languageCode]!['YourBasketEmpty']!;
  }

  String get favorites {
    return _localizedValues[locale.languageCode]!['Favorites']!;
  }

  String get orders {
    return _localizedValues[locale.languageCode]!['Orders']!;
  }

  String get addresses {
    return _localizedValues[locale.languageCode]!['Addresses']!;
  }

  String get changePassword {
    return _localizedValues[locale.languageCode]!['ChangePassword']!;
  }

  String get shipping {
    return _localizedValues[locale.languageCode]!['Shipping']!;
  }

  String get grandTotal {
    return _localizedValues[locale.languageCode]!['GrandTotal']!;
  }

  String get title {
    return _localizedValues[locale.languageCode]!['Title']!;
  }

  String get firstName {
    return _localizedValues[locale.languageCode]!['FirstName']!;
  }

  String get lastName {
    return _localizedValues[locale.languageCode]!['LastName']!;
  }

  String get company {
    return _localizedValues[locale.languageCode]!['Company']!;
  }

  String get addressLine1 {
    return _localizedValues[locale.languageCode]!['AddressLine1']!;
  }

  String get addressLine2 {
    return _localizedValues[locale.languageCode]!['AddressLine2']!;
  }

  String get city {
    return _localizedValues[locale.languageCode]!['City']!;
  }

  String get state {
    return _localizedValues[locale.languageCode]!['State']!;
  }

  String get postCode {
    return _localizedValues[locale.languageCode]!['PostCode']!;
  }

  String get country {
    return _localizedValues[locale.languageCode]!['Country']!;
  }

  String get phone {
    return _localizedValues[locale.languageCode]!['Phone']!;
  }

  String get save {
    return _localizedValues[locale.languageCode]!['Save']!;
  }

  String get fullName {
    return _localizedValues[locale.languageCode]!['FullName']!;
  }

  String get username {
    return _localizedValues[locale.languageCode]!['Username']!;
  }

  String get email {
    return _localizedValues[locale.languageCode]!['Email']!;
  }

  String get currentPassword {
    return _localizedValues[locale.languageCode]!['CurrentPassword']!;
  }

  String get newPassword {
    return _localizedValues[locale.languageCode]!['NewPassword']!;
  }

  String get confirmNewPassword {
    return _localizedValues[locale.languageCode]!['ConfirmNewPassword']!;
  }

  String get welcomeLogIn {
    return _localizedValues[locale.languageCode]!['WelcomeLogIn']!;
  }

  String get password {
    return _localizedValues[locale.languageCode]!['Password']!;
  }

  String get rememberMe {
    return _localizedValues[locale.languageCode]!['RememberMe']!;
  }

  String get forgotPassword {
    return _localizedValues[locale.languageCode]!['ForgotPassword']!;
  }

  String get dontHaveAccount {
    return _localizedValues[locale.languageCode]!['DontHaveAccount']!;
  }

  String get signUp {
    return _localizedValues[locale.languageCode]!['SignUp']!;
  }

  String get logIn {
    return _localizedValues[locale.languageCode]!['LogIn']!;
  }

  String get helloSignUp {
    return _localizedValues[locale.languageCode]!['HelloSignUp']!;
  }

  String get confirmPassword {
    return _localizedValues[locale.languageCode]!['ConfirmPassword']!;
  }

  String get byClickingSignUp {
    return _localizedValues[locale.languageCode]!['ByClickingSignUp']!;
  }

  String get termsConditions {
    return _localizedValues[locale.languageCode]!['TermsConditions']!;
  }

  String get alreadyHaveAccount {
    return _localizedValues[locale.languageCode]!['AlreadyHaveAccount']!;
  }

  String get resetMyPassword {
    return _localizedValues[locale.languageCode]!['ResetMyPassword']!;
  }

  String get pleaseTypeYourEmail {
    return _localizedValues[locale.languageCode]!['PleaseTypeYourEmail']!;
  }

  String get submit {
    return _localizedValues[locale.languageCode]!['Submit']!;
  }

  String get showReviews {
    return _localizedValues[locale.languageCode]!['ShowReviews']!;
  }

  String get relatedItems {
    return _localizedValues[locale.languageCode]!['RelatedItems']!;
  }

  String get addCart {
    return _localizedValues[locale.languageCode]!['AddCart']!;
  }

  String get addBasket {
    return _localizedValues[locale.languageCode]!['AddBasket']!;
  }

  String get yourRating {
    return _localizedValues[locale.languageCode]!['YourRating']!;
  }

  String get yourReviewOptional {
    return _localizedValues[locale.languageCode]!['YourReviewOptional']!;
  }

  String get add {
    return _localizedValues[locale.languageCode]!['Add']!;
  }

  String get edit {
    return _localizedValues[locale.languageCode]!['Edit']!;
  }

  String get noItems {
    return _localizedValues[locale.languageCode]!['NoItems']!;
  }

  String get payment {
    return _localizedValues[locale.languageCode]!['Payment']!;
  }

  String get congratulations {
    return _localizedValues[locale.languageCode]!['Congratulations']!;
  }

  String get yourOrderReceived {
    return _localizedValues[locale.languageCode]!['YourOrderReceived']!;
  }

  String get continue_ {
    return _localizedValues[locale.languageCode]!['Continue']!;
  }

  String get cardOwnersName {
    return _localizedValues[locale.languageCode]!['CardOwnersName']!;
  }

  String get cardNumber {
    return _localizedValues[locale.languageCode]!['CardNumber']!;
  }

  String get month {
    return _localizedValues[locale.languageCode]!['Month']!;
  }

  String get year {
    return _localizedValues[locale.languageCode]!['Year']!;
  }

  String get cvc {
    return _localizedValues[locale.languageCode]!['Cvc']!;
  }

  String get shipTo {
    return _localizedValues[locale.languageCode]!['ShipTo']!;
  }

  String get completeOrder {
    return _localizedValues[locale.languageCode]!['CompleteOrder']!;
  }

  String get logOut {
    return _localizedValues[locale.languageCode]!['LogOut']!;
  }

  String get accountDetails {
    return _localizedValues[locale.languageCode]!['AccountDetails']!;
  }

  String get question {
    return _localizedValues[locale.languageCode]!['Question']!;
  }

  String get no {
    return _localizedValues[locale.languageCode]!['No']!;
  }

  String get yes {
    return _localizedValues[locale.languageCode]!['Yes']!;
  }

  String get doYouWantDeleteAddress {
    return _localizedValues[locale.languageCode]!['DoYouWantDeleteAddress']!;
  }

  String get doYouWantDeleteAllItems {
    return _localizedValues[locale.languageCode]!['DoYouWantDeleteAllItems']!;
  }

  String get shippingAddress {
    return _localizedValues[locale.languageCode]!['ShippingAddress']!;
  }

  String get newRating {
    return _localizedValues[locale.languageCode]!['NewRating']!;
  }

  String get ratings {
    return _localizedValues[locale.languageCode]!['Ratings']!;
  }

  String get retry {
    return _localizedValues[locale.languageCode]!['Retry']!;
  }

  String get error {
    return _localizedValues[locale.languageCode]!['Error']!;
  }

  String get info {
    return _localizedValues[locale.languageCode]!['Info']!;
  }

  String get editPhotoTapped {
    return _localizedValues[locale.languageCode]!['EditPhotoTapped']!;
  }

  String get sortBy {
    return _localizedValues[locale.languageCode]!['SortBy']!;
  }

  String get shortenCurrency {
    return _localizedValues[locale.languageCode]!['ShortenCurrency']!;
  }

  String get recent {
    return _localizedValues[locale.languageCode]!['Recent']!;
  }

  String get popular {
    return _localizedValues[locale.languageCode]!['Popular']!;
  }

  String get favorite {
    return _localizedValues[locale.languageCode]!['Favorite']!;
  }

  String get seeAll {
    return _localizedValues[locale.languageCode]!['SeeAll']!;
  }

  String get places {
    return _localizedValues[locale.languageCode]!['Places']!;
  }

  String get placed {
    return _localizedValues[locale.languageCode]!['Placed']!;
  }

  String get processing {
    return _localizedValues[locale.languageCode]!['Processing']!;
  }

  String get onTheWay {
    return _localizedValues[locale.languageCode]!['OnTheWay']!;
  }

  String get delivered {
    return _localizedValues[locale.languageCode]!['Delivered']!;
  }

  String get cancelled {
    return _localizedValues[locale.languageCode]!['Cancelled']!;
  }

  String get loading {
    return _localizedValues[locale.languageCode]!['Loading']!;
  }

  String get newAddress {
    return _localizedValues[locale.languageCode]!['NewAddress']!;
  }

  String get addressDetail {
    return _localizedValues[locale.languageCode]!['AddressDetail']!;
  }

  String get termsTapped {
    return _localizedValues[locale.languageCode]!['TermsTapped']!;
  }

  String get youMustSelectAddress {
    return _localizedValues[locale.languageCode]!['YouMustSelectAddress']!;
  }

  String get recentSearches {
    return _localizedValues[locale.languageCode]!['RecentSearches']!;
  }

  String get orderDetail {
    return _localizedValues[locale.languageCode]!['OrderDetail']!;
  }

  String get min_ {
    return _localizedValues[locale.languageCode]!['Min.']!;
  }

  String get default_ {
    return _localizedValues[locale.languageCode]!['Default']!;
  }

  String get nameAz {
    return _localizedValues[locale.languageCode]!['NameAz']!;
  }

  String get nameZa {
    return _localizedValues[locale.languageCode]!['NameZa']!;
  }

  String get highestRate {
    return _localizedValues[locale.languageCode]!['HighestRate']!;
  }

  String get rateCount {
    return _localizedValues[locale.languageCode]!['RateCount']!;
  }

  String get search {
    return _localizedValues[locale.languageCode]!['Search']!;
  }

  String get placeDetail {
    return _localizedValues[locale.languageCode]!['PlaceDetail']!;
  }
}
