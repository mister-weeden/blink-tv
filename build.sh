#!/bin/bash
# Build script for Blink TV Browser

echo "🏗️ Building Blink TV Browser"
echo "============================="

PROJECT_NAME="BlinkTVBrowser"
BUILD_TYPE=${1:-debug}
DESTINATION=${2:-"platform=tvOS Simulator,name=Apple TV,OS=17.0"}

echo "Build Type: $BUILD_TYPE"
echo "Destination: $DESTINATION"

# Build framework first
echo "🔧 Building Blink Framework..."
cd BlinkFramework_Source

# Compile framework
clang -c -fobjc-arc -target arm64-apple-tvos17.0 \
    -isysroot $(xcrun --sdk appletvos --show-sdk-path) \
    -I../BlinkFramework.framework/Headers \
    *.m

ar rcs ../BlinkFramework.framework/BlinkFramework *.o
rm *.o

cd ..

echo "✅ Framework built"

# Build application
echo "📱 Building application..."
if [ "$BUILD_TYPE" = "release" ]; then
    CONFIG="Release"
    SDK="appletvos"
else
    CONFIG="Debug"
    SDK="appletvsimulator"
fi

xcodebuild \
    -project "$PROJECT_NAME.xcodeproj" \
    -scheme "$PROJECT_NAME" \
    -sdk "$SDK" \
    -destination "$DESTINATION" \
    -configuration "$CONFIG" \
    build

echo "✅ Build completed"
