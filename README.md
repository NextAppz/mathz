# MathZ - Advanced Calculator

A modern, feature-rich calculator application for Android and iOS.

**Made by Andreas Agouridis | Powered by NextAppz**

Website: [nextappz.com/mathz](https://nextappz.com/mathz)

---

## Features

### Basic Calculator
- Standard arithmetic operations (+, -, ×, ÷)
- Decimal point support
- Clear and backspace functions
- Memory functions (MC, MR, M+, M-)
- Percentage calculations

### 🔬 Scientific Calculator
- Trigonometric functions (sin, cos, tan, asin, acos, atan)
- Logarithmic functions (log, ln, exp)
- Power functions (x², x³, xʸ, √)
- Mathematical constants (π, e)
- Parentheses support for complex expressions
- Angle mode toggle (Degrees/Radians)

### 🔄 Unit Converter
Supports 8 categories with 50+ units:
- **Length:** meters, kilometers, miles, feet, inches, yards, centimeters, millimeters
- **Weight:** kilograms, grams, milligrams, pounds, ounces, metric tons
- **Temperature:** Celsius, Fahrenheit, Kelvin
- **Volume:** liters, milliliters, gallons, quarts, pints, cups, fluid ounces
- **Area:** square meters, square kilometers, square feet, acres, hectares
- **Speed:** m/s, km/h, mph, knots
- **Time:** seconds, minutes, hours, days, weeks, months, years
- **Energy:** joules, kilojoules, calories, kilocalories, watt-hours, kilowatt-hours

### 📊 History Tracking
- View all past calculations
- Tap to copy results
- Long press to delete entries
- Clear all history option
- Relative timestamps (e.g., "5m ago")

### ⚙️ Customizable Settings
- Decimal precision selector (2-12 decimals)
- Haptic feedback toggle
- Sound effects toggle
- Dark mode support
- Theme follows system settings

---

## Tech Stack

- **Framework:** React Native with Expo SDK 54
- **Language:** TypeScript 5.9
- **Styling:** NativeWind 4 (Tailwind CSS)
- **Navigation:** Expo Router 6
- **Math Engine:** math.js
- **State Management:** React Context + AsyncStorage
- **Build System:** EAS Build

---

## Project Structure

```
app/
  _layout.tsx           ← Root layout with providers
  (tabs)/
    _layout.tsx         ← Tab bar configuration
    index.tsx           ← Calculator screen
    converter.tsx       ← Unit converter screen
    history.tsx         ← History screen
    settings.tsx        ← Settings screen

components/
  calculator-button.tsx ← Button component
  screen-container.tsx  ← SafeArea wrapper
  ui/
    icon-symbol.tsx     ← Icon mapping

lib/
  calculator.ts         ← Math functions
  unit-converter.ts     ← Conversion utilities
  utils.ts              ← Helper functions

assets/images/
  icon.png              ← App icon
  splash-icon.png       ← Splash screen
  favicon.png           ← Web favicon
```

---

## Getting Started

### Prerequisites
- Node.js 16+
- npm or pnpm
- Expo CLI: `npm install -g expo-cli`

### Installation

```bash
# Clone or navigate to project
cd advanced-calculator

# Install dependencies
pnpm install

# Start development server
pnpm dev
```

### Development

```bash
# Run on web
pnpm dev:metro

# Run on iOS (requires macOS)
pnpm ios

# Run on Android
pnpm android

# Run tests
pnpm test
```

---

## Building for Android

### Using EAS Build (Recommended)

```bash
# Install EAS CLI
npm install -g eas-cli

# Login to Expo
eas login

# Build for Android
eas build --platform android --profile preview

# For production
eas build --platform android --profile production
```

See [BUILD_APK_INSTRUCTIONS.md](./BUILD_APK_INSTRUCTIONS.md) for detailed instructions.

---

## Configuration

### App Settings
- **Minimum Android SDK:** 21 (Android 5.0)
- **Target Android SDK:** 34 (Android 14)
- **Minimum iOS:** 13.0
- **App Name:** MathZ
- **Package:** space.manus.advanced.calculator.t*

### Customization
- Update app name in `app.config.ts`
- Modify colors in `theme.config.js`
- Change icon in `assets/images/icon.png`

---

## Testing

The app includes comprehensive unit tests for calculator and converter functions:

```bash
# Run all tests
pnpm test

# Run specific test file
pnpm test lib/calculator.test.ts

# Watch mode
pnpm test --watch
```

---

## Publishing to Google Play Store

1. Build production APK: `eas build --platform android --profile production`
2. Create Google Play Developer account
3. Upload APK to Play Store Console
4. Fill in app details and screenshots
5. Submit for review

See [APK_BUILD_GUIDE.md](./APK_BUILD_GUIDE.md) for more details.

---

## Credits

**Made by:** Andreas Agouridis

**Powered by:** NextAppz

**Website:** [nextappz.com/mathz](https://nextappz.com/mathz)

See [CREDITS.md](./CREDITS.md) for full attribution.

---

## License

© 2026 NextAppz. All rights reserved.

---

## Support

For questions or feedback, visit: [nextappz.com/mathz](https://nextappz.com/mathz)

---

**Enjoy calculating with MathZ!** 🚀
