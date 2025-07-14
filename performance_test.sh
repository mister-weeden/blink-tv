#!/bin/bash
# Performance testing script for Blink TV Browser

echo "⚡ Running Blink TV Browser Performance Tests"
echo "============================================="

PROJECT_NAME="BlinkTVBrowser"
BUILD_DIR="./build"

# Build the app first
echo "🏗️ Building application for performance testing..."
xcodebuild -project "$PROJECT_NAME.xcodeproj" \
    -scheme "$PROJECT_NAME" \
    -sdk appletvsimulator \
    -destination 'platform=tvOS Simulator,name=Apple TV,OS=17.0' \
    -configuration Release \
    -derivedDataPath "$BUILD_DIR" \
    build

# Find the built app
APP_PATH=$(find "$BUILD_DIR" -name "*.app" -type d | head -1)

if [ -n "$APP_PATH" ]; then
    echo "📱 Found app at: $APP_PATH"
    
    # Run performance tests
    echo "🔍 Running memory analysis..."
    instruments -t "Allocations" -D memory_test.trace "$APP_PATH" &
    INSTRUMENTS_PID=$!
    
    # Let it run for 60 seconds
    sleep 60
    kill $INSTRUMENTS_PID 2>/dev/null || true
    
    echo "🔍 Running time profiler..."
    instruments -t "Time Profiler" -D time_test.trace "$APP_PATH" &
    INSTRUMENTS_PID=$!
    
    sleep 60
    kill $INSTRUMENTS_PID 2>/dev/null || true
    
    echo "✅ Performance tests completed"
    echo "📊 Results saved to *.trace files"
else
    echo "❌ No app found for testing"
    exit 1
fi
