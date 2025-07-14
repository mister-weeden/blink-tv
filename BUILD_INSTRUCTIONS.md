# Blink TV Browser - Build Instructions

## 📋 Prerequisites

### System Requirements
- **macOS 12.0+** (Monterey or later)
- **Xcode 15.0+** with tvOS SDK
- **Command Line Tools** installed
- **Git** for version control

### Hardware Requirements
- **Apple Silicon (M1/M2)** or Intel Mac
- **8GB+ RAM** recommended
- **5GB+ free disk space**

## 🚀 Building the Application

### Step 1: Clone and Setup
```bash
# Navigate to project directory
cd /Users/owner/src/blink-tv

# Verify project structure
ls -la
# Should show: BlinkFramework.framework, BlinkTVBrowser.xcodeproj, etc.
```

### Step 2: Build Blink Framework
```bash
# Compile the Blink Framework
cd BlinkFramework_Source

# Compile for tvOS (ARM64)
clang -c -fobjc-arc -target arm64-apple-tvos17.0 \
    -isysroot $(xcrun --sdk appletvos --show-sdk-path) \
    -I../BlinkFramework.framework/Headers \
    BlinkRenderingEngine.m BlinkJSEngine.m BlinkLayoutEngine.m

# Compile for tvOS Simulator (x86_64/ARM64)
clang -c -fobjc-arc -target x86_64-apple-tvos17.0-simulator \
    -isysroot $(xcrun --sdk appletvsimulator --show-sdk-path) \
    -I../BlinkFramework.framework/Headers \
    BlinkRenderingEngine.m BlinkJSEngine.m BlinkLayoutEngine.m

# Create universal static library
ar rcs ../BlinkFramework.framework/BlinkFramework *.o

cd ..
```

### Step 3: Build Application with Xcode
```bash
# Build for Apple TV Simulator
xcodebuild -project BlinkTVBrowser.xcodeproj \
    -scheme BlinkTVBrowser \
    -sdk appletvsimulator \
    -destination 'platform=tvOS Simulator,name=Apple TV,OS=17.0' \
    -configuration Debug \
    build

# Build for Apple TV Device (requires provisioning profile)
xcodebuild -project BlinkTVBrowser.xcodeproj \
    -scheme BlinkTVBrowser \
    -sdk appletvos \
    -destination 'generic/platform=tvOS' \
    -configuration Release \
    build
```

### Step 4: Alternative - Build via Xcode GUI
1. Open `BlinkTVBrowser.xcodeproj` in Xcode
2. Select target: **Apple TV** or **Apple TV Simulator**
3. Choose scheme: **BlinkTVBrowser**
4. Press **⌘+B** to build or **⌘+R** to build and run

## 🧪 Testing the Application

### Unit Testing
```bash
# Run unit tests (if implemented)
xcodebuild test -project BlinkTVBrowser.xcodeproj \
    -scheme BlinkTVBrowser \
    -sdk appletvsimulator \
    -destination 'platform=tvOS Simulator,name=Apple TV,OS=17.0'
```

### Manual Testing Checklist
- [ ] **App Launch**: Application starts without crashes
- [ ] **UI Elements**: URL field, Go button, status label visible
- [ ] **Web Rendering**: Default homepage loads correctly
- [ ] **Navigation**: Can enter URLs and navigate
- [ ] **Blink Features**: Performance metrics display
- [ ] **Remote Control**: Apple TV remote navigation works
- [ ] **JavaScript**: Interactive elements function properly

### Performance Testing
```bash
# Monitor performance during testing
instruments -t "Time Profiler" -D /tmp/blink_performance.trace \
    /path/to/BlinkTVBrowser.app
```

## ▶️ Running the Application

### Method 1: Xcode Simulator
```bash
# Launch Apple TV Simulator
open -a Simulator

# Install and run app
xcrun simctl install booted /path/to/BlinkTVBrowser.app
xcrun simctl launch booted com.blink.tvbrowser
```

### Method 2: Xcode GUI
1. Open `BlinkTVBrowser.xcodeproj`
2. Select **Apple TV Simulator** as destination
3. Press **⌘+R** to run
4. Use simulator remote or keyboard shortcuts

### Method 3: Physical Apple TV (requires Apple Developer Account)
1. Connect Apple TV to same network
2. Enable **Developer Mode** on Apple TV
3. Pair device in Xcode (**Window > Devices and Simulators**)
4. Select Apple TV device as destination
5. Build and run with **⌘+R**

## 🔧 Troubleshooting

### Common Issues

#### Build Errors
```bash
# Clean build folder
xcodebuild clean -project BlinkTVBrowser.xcodeproj

# Reset simulator
xcrun simctl erase all
```

#### Framework Issues
```bash
# Verify framework structure
ls -la BlinkFramework.framework/
file BlinkFramework.framework/BlinkFramework

# Rebuild framework if needed
cd BlinkFramework_Source && make clean && make
```

#### Simulator Issues
```bash
# Reset Apple TV Simulator
xcrun simctl shutdown all
xcrun simctl erase all
xcrun simctl boot "Apple TV"
```

## 📊 Performance Monitoring

### Built-in Metrics
The app includes performance monitoring:
- **Rendering Stats**: Frame rates, render times
- **JavaScript Performance**: Execution metrics
- **Memory Usage**: Real-time memory tracking
- **Network Performance**: Request timing

### External Tools
```bash
# Xcode Instruments
instruments -t "Activity Monitor" BlinkTVBrowser.app
instruments -t "Allocations" BlinkTVBrowser.app
instruments -t "Time Profiler" BlinkTVBrowser.app
```

## 🚀 Deployment

### App Store Connect (Production)
1. Archive build: **Product > Archive**
2. Upload to App Store Connect
3. Submit for review

### TestFlight (Beta)
1. Archive build with Release configuration
2. Upload to App Store Connect
3. Add to TestFlight for beta testing

### Enterprise Distribution
1. Configure enterprise provisioning profile
2. Build with enterprise certificate
3. Distribute via MDM or direct installation

## 📝 Development Notes

### Framework Architecture
- **BlinkWebView**: Main web rendering component
- **BlinkRenderingEngine**: Hardware-accelerated rendering
- **BlinkJSEngine**: V8-compatible JavaScript execution
- **BlinkLayoutEngine**: Advanced layout calculations

### Key Files
- `ViewController.m`: Main app logic and UI
- `AppDelegate.m`: App lifecycle management
- `BlinkFramework.framework`: Core rendering engine
- `Info.plist`: App configuration and permissions

### Customization Points
- Modify `ViewController.m` for UI changes
- Extend `BlinkWebView` for additional features
- Update framework headers for new APIs
- Customize homepage in `loadDefaultPage` method

## 🔍 Debugging

### Xcode Debugging
1. Set breakpoints in source code
2. Use **Debug Navigator** for memory/CPU monitoring
3. Enable **Address Sanitizer** for memory issues
4. Use **Thread Sanitizer** for concurrency issues

### Console Logging
```objc
// Add to ViewController.m for debugging
NSLog(@"🔧 Blink Debug: %@", debugInfo);
```

### Framework Debugging
```bash
# Check framework symbols
nm BlinkFramework.framework/BlinkFramework

# Verify architecture
lipo -info BlinkFramework.framework/BlinkFramework
```

---

**Next**: See GitHub Actions workflow for automated building and testing.
