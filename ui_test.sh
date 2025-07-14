#!/bin/bash
# UI testing script for Blink TV Browser

echo "🖥️ Running Blink TV Browser UI Tests"
echo "===================================="

PROJECT_NAME="BlinkTVBrowser"

# Run UI tests
echo "🧪 Running UI automation tests..."
xcodebuild test \
    -project "$PROJECT_NAME.xcodeproj" \
    -scheme "$PROJECT_NAME" \
    -sdk appletvsimulator \
    -destination 'platform=tvOS Simulator,name=Apple TV,OS=17.0' \
    -only-testing:"${PROJECT_NAME}UITests" \
    -resultBundlePath "./UITestResults.xcresult"

if [ $? -eq 0 ]; then
    echo "✅ UI tests passed"
    
    # Generate test report
    xcrun xcresulttool get --format json --path UITestResults.xcresult > ui_test_results.json
    echo "📊 Test results saved to ui_test_results.json"
else
    echo "❌ UI tests failed"
    exit 1
fi
