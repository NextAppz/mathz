# Advanced Calculator - Mobile App Design

## Design Philosophy
A modern, iOS-native calculator app that extends beyond basic arithmetic with scientific functions, unit conversions, and history tracking. The design follows Apple Human Interface Guidelines with a focus on one-handed portrait usage and intuitive gesture-based interactions.

## Screen List

### 1. Calculator Screen (Main)
**Primary Content:**
- Large display area showing current input/result
- Secondary display for previous operation/history
- Grid-based button layout for numbers and operations
- Mode switcher (Basic / Scientific / Converter)

**Functionality:**
- Basic arithmetic operations (+, -, ×, ÷)
- Scientific functions (sin, cos, tan, log, ln, √, x², x³, xʸ, π, e)
- Memory functions (MC, MR, M+, M-)
- Percentage calculations
- Parentheses support for complex expressions
- Backspace/clear operations
- Real-time calculation with expression evaluation

### 2. Unit Converter Screen
**Primary Content:**
- Category selector (Length, Weight, Temperature, Volume, Area, Speed, Time, Energy)
- From unit input field with unit selector
- To unit input field with unit selector
- Conversion result display
- Quick swap button between units

**Functionality:**
- Real-time conversion as user types
- Support for multiple unit categories
- Swap from/to units with one tap
- Recent conversions list

### 3. History Screen
**Primary Content:**
- Chronological list of past calculations
- Each entry shows expression and result
- Search/filter functionality
- Clear history option

**Functionality:**
- Tap to copy result
- Long press to reuse calculation
- Swipe to delete individual entries
- Date grouping (Today, Yesterday, Older)

### 4. Settings Screen
**Primary Content:**
- Decimal precision selector
- Angle mode (Degrees/Radians)
- Theme selection (System/Light/Dark)
- Haptic feedback toggle
- Sound effects toggle
- About section

**Functionality:**
- Persist user preferences
- Apply settings across all calculator modes
- App version and credits

## Color Choices

**Brand Colors:**
- Primary: Deep Blue (#1E40AF) - for primary action buttons and highlights
- Accent: Bright Cyan (#06B6D4) - for operation buttons and active states
- Background Light: Pure White (#FFFFFF)
- Background Dark: Rich Black (#0F172A)
- Surface Light: Light Gray (#F1F5F9)
- Surface Dark: Dark Slate (#1E293B)
- Number Buttons: Soft Gray (#E2E8F0) in light, Dark Gray (#334155) in dark
- Operation Buttons: Cyan gradient (#06B6D4 to #0891B2)
- Equals Button: Bold Blue (#1E40AF)
- Text Primary: Near Black (#0F172A) in light, White (#F8FAFC) in dark
- Text Secondary: Medium Gray (#64748B)

## Key User Flows

### Flow 1: Basic Calculation
1. User opens app → Calculator screen (Basic mode) displayed
2. User taps number buttons → Numbers appear in display
3. User taps operation (+, -, ×, ÷) → Operation registered
4. User taps more numbers → Second operand entered
5. User taps equals (=) → Result displayed, calculation saved to history

### Flow 2: Scientific Calculation
1. User taps mode switcher → Selects "Scientific"
2. Button grid expands to show scientific functions
3. User enters expression using numbers, operations, and functions (e.g., sin(45) + √16)
4. User taps equals → Result calculated and displayed
5. Calculation auto-saved to history

### Flow 3: Unit Conversion
1. User navigates to Converter tab
2. User selects category (e.g., "Length")
3. User taps "From" field → Selects unit (e.g., "Kilometers")
4. User enters value → Real-time conversion displayed in "To" field
5. User can tap swap icon to reverse conversion direction
6. Conversion saved to recent conversions

### Flow 4: View History
1. User navigates to History tab
2. Scrollable list of past calculations displayed
3. User taps on an entry → Result copied to clipboard (toast notification)
4. User long-presses entry → Calculator opens with that expression pre-loaded
5. User swipes left on entry → Delete option appears

### Flow 5: Adjust Settings
1. User navigates to Settings tab
2. User taps "Decimal Precision" → Picker shows options (2, 4, 6, 8, 10 decimals)
3. User selects preference → Setting saved and applied immediately
4. User toggles "Haptic Feedback" → Preference saved
5. Settings persist across app sessions

## Layout Considerations

**Calculator Screen Layout:**
- Display area: Top 30% of screen (safe area aware)
- Button grid: Bottom 70% with adequate touch targets (min 56px)
- Buttons arranged in 4-5 columns depending on mode
- Equal button spans 2 columns for emphasis
- One-handed thumb reach optimized

**Navigation:**
- Tab bar at bottom with 4 tabs: Calculator, Converter, History, Settings
- Icons: calculator.fill, arrow.left.arrow.right, clock.fill, gearshape.fill

**Interaction Patterns:**
- Button press: Scale animation (0.95) + haptic feedback
- Long press on display: Copy result
- Swipe left on display: Backspace
- Swipe right on display: Clear
- Pull down on history: Refresh

## Technical Notes

- Use `math.js` or similar library for expression evaluation
- Store history in AsyncStorage (local only, no backend needed)
- Support landscape orientation for extended scientific mode
- Implement keyboard input support for web version
- Use react-native-reanimated for smooth animations
- Implement proper error handling for invalid expressions
