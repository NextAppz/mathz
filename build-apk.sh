#!/bin/bash

# Advanced Calculator - APK Build Script
# This script helps you build an APK for Android

set -e

echo "================================"
echo "Advanced Calculator APK Builder"
echo "================================"
echo ""

# Check if eas-cli is installed
if ! command -v eas &> /dev/null; then
    echo "❌ EAS CLI is not installed."
    echo "Installing EAS CLI globally..."
    npm install -g eas-cli
fi

echo "✓ EAS CLI is installed"
echo ""

# Check if user is logged in
echo "Checking Expo login status..."
if ! eas whoami &> /dev/null; then
    echo "❌ Not logged in to Expo"
    echo "Please log in:"
    eas login
else
    echo "✓ Already logged in to Expo"
fi

echo ""
echo "Select build type:"
echo "1) Preview (for testing) - Faster build"
echo "2) Production (for Play Store) - Optimized"
echo ""
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        echo ""
        echo "🔨 Building Preview APK..."
        eas build --platform android --profile preview
        ;;
    2)
        echo ""
        echo "🔨 Building Production APK..."
        eas build --platform android --profile production
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

echo ""
echo "✓ Build started successfully!"
echo ""
echo "📊 Monitor your build at: https://expo.dev/builds"
echo ""
echo "You will receive an email when the build is complete."
echo "Then you can download your APK from the Expo dashboard."
echo ""
echo "To install on your device:"
echo "  1. Download the APK from https://expo.dev/builds"
echo "  2. Transfer to your Android phone"
echo "  3. Open file manager and tap the APK to install"
echo ""
