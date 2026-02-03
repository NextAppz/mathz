# 🚀 How to Build Your Advanced Calculator APK

This document provides step-by-step instructions to build an Android APK for your Advanced Calculator app.

## Quick Summary

Building an APK involves:
1. Creating an Expo account (free)
2. Installing EAS CLI
3. Running a build command
4. Downloading your APK
5. Installing on your Android device

**Total time:** 20-30 minutes (including build time)

---

## Detailed Steps

### Step 1: Create Expo Account (5 minutes)

1. Open https://expo.dev in your browser
2. Click **"Sign Up"** button
3. Enter your email and create a password
4. Verify your email address
5. You now have a free Expo account

### Step 2: Install EAS CLI (2 minutes)

Open your terminal/command prompt and run:

```bash
npm install -g eas-cli
```

This installs the Expo Application Services CLI globally on your computer.

### Step 3: Navigate to Your Project

```bash
cd /home/ubuntu/advanced-calculator
```

Or navigate to wherever your project folder is located.

### Step 4: Log In to Expo

```bash
eas login
```

This will:
- Open a browser window
- Ask you to log in with your Expo account
- Return you to the terminal when complete

### Step 5: Build Your APK

**For Testing (Recommended First Time):**

```bash
eas build --platform android --profile preview
```

**For Production (Play Store Ready):**

```bash
eas build --platform android --profile production
```

### Step 6: Wait for Build to Complete

After running the build command:

1. You'll see a **Build ID** and a link to the dashboard
2. Visit https://expo.dev/builds to monitor progress
3. The build typically takes **10-20 minutes**
4. You'll receive an **email notification** when complete

### Step 7: Download Your APK

1. Go to https://expo.dev/builds
2. Find your completed build
3. Click on it to view details
4. Click **"Download"** to get your APK file
5. The file will be saved to your Downloads folder

---

## Installing on Your Android Device

### Method 1: Direct Installation (Easiest)

1. **Transfer the APK to your phone:**
   - Connect phone to computer via USB
   - Copy the APK file to your phone's Downloads folder
   - Or email it to yourself and download on phone

2. **Install on your phone:**
   - Open **File Manager** on your phone
   - Navigate to **Downloads**
   - Tap the APK file
   - Tap **Install**
   - Grant permissions when prompted
   - Wait for installation to complete
   - Tap **Open** to launch the app

### Method 2: Using Android Emulator

1. **Download Android Studio** from https://developer.android.com/studio
2. **Create a virtual device** in Android Studio
3. **Start the emulator**
4. **Drag and drop the APK** into the emulator window
5. **Wait for installation** to complete

### Method 3: Using ADB (Advanced)

If you have Android SDK installed:

```bash
adb install advanced-calculator-production.apk
```

---

## Troubleshooting

### Problem: "eas-cli not found"

**Solution:**
```bash
npm install -g eas-cli
```

### Problem: "Not logged in to Expo"

**Solution:**
```bash
eas login
```

### Problem: Build fails with credential error

**Solution:**
```bash
eas credentials --platform android --reset
eas build --platform android --profile preview
```

### Problem: APK won't install on device

**Possible causes:**
- Device doesn't have enough storage space
- Android version too old
- "Unknown Sources" not enabled

**Solutions:**
1. Free up storage on your phone
2. Enable "Unknown Sources": Settings → Security → Unknown Sources
3. Check minimum Android version in `app.config.ts`

### Problem: Build takes very long

- First build: 15-20 minutes (normal)
- Subsequent builds: 5-10 minutes
- You can check progress on Expo dashboard

---

## Build Profiles Explained

### Preview Profile (Recommended for Testing)
- **Use case:** Testing on your device
- **Build time:** ~15 minutes
- **File size:** Larger (~50-80 MB)
- **Optimization:** None
- **Command:** `eas build --platform android --profile preview`

### Production Profile (For Play Store)
- **Use case:** Publishing to Google Play Store
- **Build time:** ~15-20 minutes
- **File size:** Smaller (~30-50 MB)
- **Optimization:** Full optimization and minification
- **Command:** `eas build --platform android --profile production`

---

## Publishing to Google Play Store

Once you have a working APK, you can publish to Google Play Store:

### Step 1: Create Developer Account
1. Go to https://play.google.com/console
2. Pay one-time $25 fee
3. Complete account setup

### Step 2: Create App Listing
1. Click "Create app"
2. Enter app name: "Advanced Calculator"
3. Fill in app details and screenshots

### Step 3: Upload APK
1. Build production APK: `eas build --platform android --profile production`
2. Download from Expo dashboard
3. Upload to Google Play Console

### Step 4: Submit for Review
1. Fill in app description, pricing, etc.
2. Click "Submit for review"
3. Wait 2-4 hours for approval
4. Your app goes live!

---

## Your App Configuration

Your Advanced Calculator app is configured with:

| Setting | Value |
|---------|-------|
| **App Name** | Advanced Calculator |
| **Package ID** | space.manus.advanced.calculator.t* |
| **Min Android** | API 21 (Android 5.0) |
| **Target Android** | API 34 (Android 14) |
| **Permissions** | POST_NOTIFICATIONS |
| **Icon** | Custom gradient design |

---

## Useful Commands Reference

```bash
# Check if logged in
eas whoami

# View all your builds
eas build:list

# View specific build details
eas build:view <BUILD_ID>

# Cancel a build
eas build:cancel <BUILD_ID>

# Reset credentials
eas credentials --platform android --reset

# View project configuration
eas config
```

---

## FAQ

**Q: Is there a cost to build an APK?**
A: No, Expo offers free builds. You only pay if you use premium features.

**Q: Can I build without Expo account?**
A: No, you need an Expo account to use EAS Build.

**Q: How many builds can I do?**
A: Unlimited free builds with your Expo account.

**Q: Can I build on Windows/Mac/Linux?**
A: Yes, EAS CLI works on all platforms.

**Q: Do I need Android Studio?**
A: No, EAS Build handles everything in the cloud.

**Q: How do I update my app?**
A: Make changes to your code, rebuild the APK, and upload new version to Play Store.

**Q: Can I build iOS app too?**
A: Yes, use `eas build --platform ios` (requires Apple developer account).

---

## Next Steps

1. ✅ Create Expo account
2. ✅ Install EAS CLI
3. ✅ Run: `eas build --platform android --profile preview`
4. ✅ Download APK from Expo dashboard
5. ✅ Install on your Android device
6. ✅ Test all features
7. ✅ Build production version when ready
8. ✅ Publish to Google Play Store

---

## Support

- **Expo Docs:** https://docs.expo.dev
- **EAS Build Guide:** https://docs.expo.dev/build/setup
- **Android Dev:** https://developer.android.com
- **Play Store:** https://play.google.com/console

---

**You're all set! Happy building! 🎉**
