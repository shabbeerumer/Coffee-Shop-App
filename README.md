# Coffee Shop App

A beautiful Flutter application for a coffee shop that allows users to browse coffee products, view details, and place orders.

## Table of Contents
- [Features](#features)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Getting Started](#getting-started)
- [How to Run](#how-to-run)
- [App Flow](#app-flow)
- [Components](#components)

## Features

- **Onboarding Screen**: Welcome screen with app introduction
- **Home Page**: Browse coffee products with search and filter capabilities
- **Category Filtering**: Filter coffees by type (Cappuccino, Latte, Espresso, etc.)
- **Product Details**: View detailed information about each coffee
- **Order Placement**: Select size and quantity, then place orders
- **Shopping Cart**: View and manage items in cart with ability to remove items
- **Bottom Navigation**: Easy navigation between home and cart screens
- **Data Persistence**: Uses shared preferences to store cart items


## Project Structure

```
lib/
├── component/
│   ├── detail_page_boxes1.dart
│   ├── detail_page_boxes2.dart
│   ├── mybottomNavigationBar.dart
│   ├── mysizedbox.dart
│   ├── mytext.dart
│   ├── ordersbutton.dart
│   ├── ordersbutton2.dart
│   └── ordersbutton3.dart
├── pages/
│   ├── cart.dart
│   ├── detail_item.dart
│   ├── firstpage.dart
│   ├── homepage.dart
│   └── orders.dart
├── utlls/
│   ├── colors.dart
│   └── packege.dart
└── main.dart
```

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  shared_preferences: ^2.5.3
  flutter_slidable: ^4.0.3

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

## Getting Started

This project is a Flutter application.

### Prerequisites

- Flutter SDK (version 3.9.2 or higher)
- Dart SDK
- An IDE (Android Studio, VS Code, etc.)

### Installation

1. Clone the repository:
   ```
   git clone <repository-url>
   ```

2. Navigate to the project directory:
   ```
   cd coffee_shop_app
   ```

3. Install dependencies:
   ```
   flutter pub get
   ```

## How to Run

1. Connect a device or start an emulator
2. Run the app:
   ```
   flutter run
   ```

## App Flow

1. **Onboarding Screen** (`firstpage.dart`)
   - Welcome message and "Get Started" button
   - Navigates to the home page

2. **Home Page** (`homepage.dart`)
   - Displays coffee products in a grid layout
   - Search functionality to find specific coffees
   - Category filtering (All Coffee, Cappuccino, Latte, etc.)
   - Promo banner display
   - Tap "+" button on a coffee to view details

3. **Detail Page** (`detail_item.dart`)
   - Shows detailed information about a selected coffee
   - Size selection (S, M, L)
   - "Buy Now" button to place order

4. **Order Page** (`orders.dart`)
   - Select delivery or pickup
   - View delivery address
   - Adjust quantity of items
   - Apply discounts
   - View payment summary
   - Place order and save to cart

5. **Cart Page** (`cart.dart`)
   - View all items added to cart
   - Swipe to delete items
   - Data persistence using shared preferences

## Components

The app uses several custom components for consistent UI:

- `mytext.dart`: Custom text widget for consistent styling
- `mysizedbox.dart`: Custom sized box for consistent spacing
- `mybottomNavigationBar.dart`: Custom bottom navigation bar
- `ordersbutton.dart`, `ordersbutton2.dart`, `ordersbutton3.dart`: Custom button components
- `detail_page_boxes1.dart`, `detail_page_boxes2.dart`: Custom boxes for detail page

## Customization

### Colors

The app uses a custom color palette defined in `utlls/colors.dart`:
- `whitecolor`: #FFFFFF
- `blackcolor`: #000000
- `browncolor`: #C67C4E (primary brand color)
- `graycolor`: #9E9E9E
- `redcolor`: #ED5151

### Assets

All images are stored in the `images/` directory and automatically included in the app through the pubspec.yaml file.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.