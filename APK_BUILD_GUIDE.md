# Advanced Calculator - APK Build Guide

This guide explains how to build and distribute your Advanced Calculator app as an Android APK.

## Prerequisites

Before building the APK, ensure you have:

1. **Expo Account** - Create one at https://expo.dev (free)
2. **EAS CLI** - Install globally: `npm install -g eas-cli`
3. **Node.js & npm** - Already installed on your system
4. **Git** - For version control (recommended)

## Step-by-Step Build Process

### Step 1: Create Expo Account

1. Go to https://expo.dev
2. Click "Sign Up" and create a free account
3. Verify your email address
4. Log in to your account

### Step 2: Configure EAS Build

Run the following command in your project directory:

```bash
eas build --platform android
```

The first time you run this, it will:
- Ask you to log in with your Expo account
- Create a build profile for Android
- Generate signing credentials automatically (recommended for first-time builders)

### Step 3: Build the APK

Choose your build type when prompted:

**For Testing (Development APK):**
```bash
eas build --platform android --profile preview
```
- Faster build time
- Larger file size
- Good for testing on devices

**For Production (Play Store APK):**
```bash
eas build --platform android --profile production
```
- Optimized and smaller
- Signed for Google Play Store
- Takes longer to build

### Step 4: Monitor Build Progress

After starting the build:
1. You'll see a build ID and link to the dashboard
2. Visit https://expo.dev/builds to monitor progress
3. Build typically takes 10-20 minutes
4. You'll receive an email when complete

### Step 5: Download Your APK

Once the build completes:

1. Go to https://expo.dev/builds
2. Find your build in the list
3. Click the build to see details
4. Download the APK file
5. The file will be named something like: `advanced-calculator-production.apk`

## Installing the APK on Your Device

### Option A: Direct Installation (Android Phone)

1. Transfer the APK file to your Android phone
2. Open a file manager on your phone
3. Navigate to the APK file
4. Tap to install
5. Grant permissions when prompted
6. Launch the app

### Option B: Using ADB (Android Debug Bridge)

If you have Android SDK installed:

```bash
adb install advanced-calculator-production.apk
```

### Option C: Using Android Studio

1. Open Android Studio
2. Go to: Device Manager → Virtual Devices
3. Select a device and click "Play"
4. Drag and drop the APK into the emulator window
5. Wait for installation to complete

## Distributing on Google Play Store

To publish your app on Google Play Store:

1. Create a Google Play Developer account (one-time $25 fee)
2. Create a new app listing
3. Upload the signed APK (EAS provides this automatically)
4. Fill in app details, screenshots, and description
5. Set pricing and distribution countries
6. Submit for review (typically 2-4 hours)

### Using EAS Submit (Automated)

You can automate the Play Store submission:

```bash
eas submit --platform android --latest
```

This requires:
- Google Play service account JSON file
- Proper configuration in `eas.json`

## Troubleshooting

### Build Fails with "Credentials Error"

**Solution:** Reset credentials and rebuild:
```bash
eas credentials --platform android --reset
eas build --platform android
```

### APK Won't Install on Device

**Possible causes:**
- Device has older Android version than your app requires
- Device has insufficient storage
- Unknown sources not enabled (Settings → Security → Unknown Sources)

**Solution:**
- Check `app.config.ts` for minimum SDK version
- Enable "Unknown Sources" in device settings
- Free up storage space on device

### Build Takes Too Long

- First builds take longer (15-20 minutes)
- Subsequent builds are faster (5-10 minutes)
- You can check progress on the Expo dashboard

## Project Configuration

Your app is configured with:

- **Minimum Android SDK:** 21 (Android 5.0)
- **Target Android SDK:** 34 (Android 14)
- **App Name:** Advanced Calculator
- **Package:** `space.manus.advanced.calculator.t<timestamp>`
- **Permissions:** POST_NOTIFICATIONS (for future push notifications)

## Build Profiles

### Development Profile
- Used for testing during development
- Larger file size
- Faster build time
- Not optimized

### Preview Profile
- Used for testing before production
- Good balance of size and build time
- Suitable for beta testing

### Production Profile
- Used for Play Store release
- Optimized and minified
- Smaller file size
- Proper signing for distribution

## Next Steps

1. **Build your first APK:** `eas build --platform android --profile preview`
2. **Test on device:** Install and verify all features work
3. **Fix any issues:** Make changes and rebuild
4. **Build production APK:** `eas build --platform android --profile production`
5. **Publish to Play Store:** Create developer account and submit

## Useful Commands

```bash
# Login to Expo
eas login

# Check build status
eas build:list

# View build details
eas build:view <BUILD_ID>

# Cancel a build
eas build:cancel <BUILD_ID>

# Reset credentials
eas credentials --platform android --reset

# View app configuration
eas config
```

## Support Resources

- **Expo Documentation:** https://docs.expo.dev
- **EAS Build Guide:** https://docs.expo.dev/build/setup
- **Android Development:** https://developer.android.com
- **Google Play Console:** https://play.google.com/console

## Important Notes

- Keep your Expo credentials secure
- Don't share your signing certificates
- Test thoroughly before publishing to Play Store
- Monitor app reviews and ratings after launch
- Update your app regularly with new features and bug fixes

---

**Your app is ready to build!** Start with the preview build to test on your device, then move to production when ready.
