#!/bin/bash

echo "🔧 Creating Xcode Project Configuration"
echo "======================================="

PROJECT_NAME="BlinkTVBrowser"

# Create project.pbxproj
cat > ${PROJECT_NAME}.xcodeproj/project.pbxproj << 'PBXPROJ_EOF'
// !UTF8*
{
	archiveVersion = 1;
	classes = {
	};
	objectVersion = 56;
	objects = {

/* Begin PBXBuildFile section */
		1A1A1A1A1A1A1A1A /* AppDelegate.m in Sources */ = {isa = PBXBuildFile; fileRef = 1A1A1A1B1A1A1A1A /* AppDelegate.m */; };
		1A1A1A1D1A1A1A1A /* ViewController.m in Sources */ = {isa = PBXBuildFile; fileRef = 1A1A1A1C1A1A1A1A /* ViewController.m */; };
		1A1A1A201A1A1A1A /* main.m in Sources */ = {isa = PBXBuildFile; fileRef = 1A1A1A1F1A1A1A1A /* main.m */; };
		1A1A1A221A1A1A1A /* BlinkFramework.framework in Frameworks */ = {isa = PBXBuildFile; fileRef = 1A1A1A211A1A1A1A /* BlinkFramework.framework */; };
		1A1A1A231A1A1A1A /* BlinkFramework.framework in Embed Frameworks */ = {isa = PBXBuildFile; fileRef = 1A1A1A211A1A1A1A /* BlinkFramework.framework */; settings = {ATTRIBUTES = (CodeSignOnCopy, RemoveHeadersOnCopy, ); }; };
/* End PBXBuildFile section */

/* Begin PBXCopyFilesBuildPhase section */
		1A1A1A241A1A1A1A /* Embed Frameworks */ = {
			isa = PBXCopyFilesBuildPhase;
			buildActionMask = 2147483647;
			dstPath = "";
			dstSubfolderSpec = 10;
			files = (
				1A1A1A231A1A1A1A /* BlinkFramework.framework in Embed Frameworks */,
			);
			name = "Embed Frameworks";
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXCopyFilesBuildPhase section */

/* Begin PBXFileReference section */
		1A1A1A181A1A1A1A /* BlinkTVBrowser.app */ = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = BlinkTVBrowser.app; sourceTree = BUILT_PRODUCTS_DIR; };
		1A1A1A191A1A1A1A /* AppDelegate.h */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.c.h; path = AppDelegate.h; sourceTree = "<group>"; };
		1A1A1A1B1A1A1A1A /* AppDelegate.m */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.c.objc; path = AppDelegate.m; sourceTree = "<group>"; };
		1A1A1A1C1A1A1A1A /* ViewController.m */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.c.objc; path = ViewController.m; sourceTree = "<group>"; };
		1A1A1A1E1A1A1A1A /* ViewController.h */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.c.h; path = ViewController.h; sourceTree = "<group>"; };
		1A1A1A1F1A1A1A1A /* main.m */ = {isa = PBXFileReference; lastKnownFileType = sourcecode.c.objc; path = main.m; sourceTree = "<group>"; };
		1A1A1A211A1A1A1A /* BlinkFramework.framework */ = {isa = PBXFileReference; lastKnownFileType = wrapper.framework; path = BlinkFramework.framework; sourceTree = "<group>"; };
		1A1A1A251A1A1A1A /* Info.plist */ = {isa = PBXFileReference; lastKnownFileType = text.plist.xml; path = Info.plist; sourceTree = "<group>"; };
/* End PBXFileReference section */

/* Begin PBXFrameworksBuildPhase section */
		1A1A1A151A1A1A1A /* Frameworks */ = {
			isa = PBXFrameworksBuildPhase;
			buildActionMask = 2147483647;
			files = (
				1A1A1A221A1A1A1A /* BlinkFramework.framework in Frameworks */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXFrameworksBuildPhase section */

/* Begin PBXGroup section */
		1A1A1A0F1A1A1A1A = {
			isa = PBXGroup;
			children = (
				1A1A1A1A1A1A1A1A /* BlinkTVBrowser */,
				1A1A1A211A1A1A1A /* BlinkFramework.framework */,
				1A1A1A171A1A1A1A /* Products */,
			);
			sourceTree = "<group>";
		};
		1A1A1A171A1A1A1A /* Products */ = {
			isa = PBXGroup;
			children = (
				1A1A1A181A1A1A1A /* BlinkTVBrowser.app */,
			);
			name = Products;
			sourceTree = "<group>";
		};
		1A1A1A1A1A1A1A1A /* BlinkTVBrowser */ = {
			isa = PBXGroup;
			children = (
				1A1A1A191A1A1A1A /* AppDelegate.h */,
				1A1A1A1B1A1A1A1A /* AppDelegate.m */,
				1A1A1A1E1A1A1A1A /* ViewController.h */,
				1A1A1A1C1A1A1A1A /* ViewController.m */,
				1A1A1A1F1A1A1A1A /* main.m */,
				1A1A1A251A1A1A1A /* Info.plist */,
			);
			path = BlinkTVBrowser;
			sourceTree = "<group>";
		};
/* End PBXGroup section */

/* Begin PBXNativeTarget section */
		1A1A1A171A1A1A1A /* BlinkTVBrowser */ = {
			isa = PBXNativeTarget;
			buildConfigurationList = 1A1A1A261A1A1A1A /* Build configuration list for PBXNativeTarget "BlinkTVBrowser" */;
			buildPhases = (
				1A1A1A141A1A1A1A /* Sources */,
				1A1A1A151A1A1A1A /* Frameworks */,
				1A1A1A161A1A1A1A /* Resources */,
				1A1A1A241A1A1A1A /* Embed Frameworks */,
			);
			buildRules = (
			);
			dependencies = (
			);
			name = BlinkTVBrowser;
			productName = BlinkTVBrowser;
			productReference = 1A1A1A181A1A1A1A /* BlinkTVBrowser.app */;
			productType = "com.apple.product-type.application";
		};
/* End PBXNativeTarget section */

/* Begin PBXProject section */
		1A1A1A101A1A1A1A /* Project object */ = {
			isa = PBXProject;
			attributes = {
				BuildIndependentTargetsInParallel = 1;
				LastUpgradeCheck = 1500;
				TargetAttributes = {
					1A1A1A171A1A1A1A = {
						CreatedOnToolsVersion = 15.0;
					};
				};
			};
			buildConfigurationList = 1A1A1A131A1A1A1A /* Build configuration list for PBXProject "BlinkTVBrowser" */;
			compatibilityVersion = "Xcode 14.0";
			developmentRegion = en;
			hasScannedForEncodings = 0;
			knownRegions = (
				en,
				Base,
			);
			mainGroup = 1A1A1A0F1A1A1A1A;
			productRefGroup = 1A1A1A171A1A1A1A /* Products */;
			projectDirPath = "";
			projectRoot = "";
			targets = (
				1A1A1A171A1A1A1A /* BlinkTVBrowser */,
			);
		};
/* End PBXProject section */

/* Begin PBXResourcesBuildPhase section */
		1A1A1A161A1A1A1A /* Resources */ = {
			isa = PBXResourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXResourcesBuildPhase section */

/* Begin PBXSourcesBuildPhase section */
		1A1A1A141A1A1A1A /* Sources */ = {
			isa = PBXSourcesBuildPhase;
			buildActionMask = 2147483647;
			files = (
				1A1A1A1D1A1A1A1A /* ViewController.m in Sources */,
				1A1A1A201A1A1A1A /* main.m in Sources */,
				1A1A1A1A1A1A1A1A /* AppDelegate.m in Sources */,
			);
			runOnlyForDeploymentPostprocessing = 0;
		};
/* End PBXSourcesBuildPhase section */

/* Begin XCBuildConfiguration section */
		1A1A1A271A1A1A1A /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++20";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_ENABLE_OBJC_WEAK = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = YES;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = dwarf;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_TESTABILITY = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = YES;
				GCC_C_LANGUAGE_STANDARD = gnu17;
				GCC_DYNAMIC_NO_PIC = NO;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_OPTIMIZATION_LEVEL = 0;
				GCC_PREPROCESSOR_DEFINITIONS = (
					"DEBUG=1",
					"",
				);
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				IPHONEOS_DEPLOYMENT_TARGET = 17.0;
				LOCALIZATION_PREFERS_STRING_CATALOGS = YES;
				MTL_ENABLE_DEBUG_INFO = INCLUDE_SOURCE;
				MTL_FAST_MATH = YES;
				ONLY_ACTIVE_ARCH = YES;
				SDKROOT = appletvos;
				TVOS_DEPLOYMENT_TARGET = 17.0;
			};
			name = Debug;
		};
		1A1A1A281A1A1A1A /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ALWAYS_SEARCH_USER_PATHS = NO;
				ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS = YES;
				CLANG_ANALYZER_NONNULL = YES;
				CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION = YES_AGGRESSIVE;
				CLANG_CXX_LANGUAGE_STANDARD = "gnu++20";
				CLANG_ENABLE_MODULES = YES;
				CLANG_ENABLE_OBJC_ARC = YES;
				CLANG_ENABLE_OBJC_WEAK = YES;
				CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING = YES;
				CLANG_WARN_BOOL_CONVERSION = YES;
				CLANG_WARN_COMMA = YES;
				CLANG_WARN_CONSTANT_CONVERSION = YES;
				CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS = YES;
				CLANG_WARN_DIRECT_OBJC_ISA_USAGE = YES_ERROR;
				CLANG_WARN_DOCUMENTATION_COMMENTS = YES;
				CLANG_WARN_EMPTY_BODY = YES;
				CLANG_WARN_ENUM_CONVERSION = YES;
				CLANG_WARN_INFINITE_RECURSION = YES;
				CLANG_WARN_INT_CONVERSION = YES;
				CLANG_WARN_NON_LITERAL_NULL_CONVERSION = YES;
				CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF = YES;
				CLANG_WARN_OBJC_LITERAL_CONVERSION = YES;
				CLANG_WARN_OBJC_ROOT_CLASS = YES_ERROR;
				CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER = YES;
				CLANG_WARN_RANGE_LOOP_ANALYSIS = YES;
				CLANG_WARN_STRICT_PROTOTYPES = YES;
				CLANG_WARN_SUSPICIOUS_MOVE = YES;
				CLANG_WARN_UNGUARDED_AVAILABILITY = YES_AGGRESSIVE;
				CLANG_WARN_UNREACHABLE_CODE = YES;
				CLANG_WARN__DUPLICATE_METHOD_MATCH = YES;
				COPY_PHASE_STRIP = NO;
				DEBUG_INFORMATION_FORMAT = "dwarf-with-dsym";
				ENABLE_NS_ASSERTIONS = NO;
				ENABLE_STRICT_OBJC_MSGSEND = YES;
				ENABLE_USER_SCRIPT_SANDBOXING = YES;
				GCC_C_LANGUAGE_STANDARD = gnu17;
				GCC_NO_COMMON_BLOCKS = YES;
				GCC_WARN_64_TO_32_BIT_CONVERSION = YES;
				GCC_WARN_ABOUT_RETURN_TYPE = YES_ERROR;
				GCC_WARN_UNDECLARED_SELECTOR = YES;
				GCC_WARN_UNINITIALIZED_AUTOS = YES_AGGRESSIVE;
				GCC_WARN_UNUSED_FUNCTION = YES;
				GCC_WARN_UNUSED_VARIABLE = YES;
				IPHONEOS_DEPLOYMENT_TARGET = 17.0;
				LOCALIZATION_PREFERS_STRING_CATALOGS = YES;
				MTL_ENABLE_DEBUG_INFO = NO;
				MTL_FAST_MATH = YES;
				SDKROOT = appletvos;
				TVOS_DEPLOYMENT_TARGET = 17.0;
				VALIDATE_PRODUCT = YES;
			};
			name = Release;
		};
		1A1A1A291A1A1A1A /* Debug */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME = AccentColor;
				CODE_SIGN_STYLE = Automatic;
				CURRENT_PROJECT_VERSION = 1;
				FRAMEWORK_SEARCH_PATHS = (
					"",
					"",
				);
				GENERATE_INFOPLIST_FILE = YES;
				INFOPLIST_FILE = BlinkTVBrowser/Info.plist;
				INFOPLIST_KEY_UILaunchStoryboardName = LaunchScreen;
				INFOPLIST_KEY_UISupportedInterfaceOrientations = "UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPad = "UIInterfaceOrientationPortrait UIInterfaceOrientationPortraitUpsideDown UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPhone = "UIInterfaceOrientationPortrait UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
				LD_RUNPATH_SEARCH_PATHS = (
					"",
					"@executable_path/Frameworks",
				);
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.blink.tvbrowser;
				PRODUCT_NAME = "";
				SDKROOT = appletvos;
				SUPPORTED_PLATFORMS = "appletvos appletvsimulator";
				SUPPORTS_MACCATALYST = NO;
				SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD = NO;
				TARGETED_DEVICE_FAMILY = 3;
				TVOS_DEPLOYMENT_TARGET = 17.0;
			};
			name = Debug;
		};
		1A1A1A2A1A1A1A1A /* Release */ = {
			isa = XCBuildConfiguration;
			buildSettings = {
				ASSETCATALOG_COMPILER_APPICON_NAME = AppIcon;
				ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME = AccentColor;
				CODE_SIGN_STYLE = Automatic;
				CURRENT_PROJECT_VERSION = 1;
				FRAMEWORK_SEARCH_PATHS = (
					"",
					"",
				);
				GENERATE_INFOPLIST_FILE = YES;
				INFOPLIST_FILE = BlinkTVBrowser/Info.plist;
				INFOPLIST_KEY_UILaunchStoryboardName = LaunchScreen;
				INFOPLIST_KEY_UISupportedInterfaceOrientations = "UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPad = "UIInterfaceOrientationPortrait UIInterfaceOrientationPortraitUpsideDown UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
				INFOPLIST_KEY_UISupportedInterfaceOrientations_iPhone = "UIInterfaceOrientationPortrait UIInterfaceOrientationLandscapeLeft UIInterfaceOrientationLandscapeRight";
				LD_RUNPATH_SEARCH_PATHS = (
					"",
					"@executable_path/Frameworks",
				);
				MARKETING_VERSION = 1.0;
				PRODUCT_BUNDLE_IDENTIFIER = com.blink.tvbrowser;
				PRODUCT_NAME = "";
				SDKROOT = appletvos;
				SUPPORTED_PLATFORMS = "appletvos appletvsimulator";
				SUPPORTS_MACCATALYST = NO;
				SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD = NO;
				TARGETED_DEVICE_FAMILY = 3;
				TVOS_DEPLOYMENT_TARGET = 17.0;
			};
			name = Release;
		};
/* End XCBuildConfiguration section */

/* Begin XCConfigurationList section */
		1A1A1A131A1A1A1A /* Build configuration list for PBXProject "BlinkTVBrowser" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				1A1A1A271A1A1A1A /* Debug */,
				1A1A1A281A1A1A1A /* Release */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
		1A1A1A261A1A1A1A /* Build configuration list for PBXNativeTarget "BlinkTVBrowser" */ = {
			isa = XCConfigurationList;
			buildConfigurations = (
				1A1A1A291A1A1A1A /* Debug */,
				1A1A1A2A1A1A1A1A /* Release */,
			);
			defaultConfigurationIsVisible = 0;
			defaultConfigurationName = Release;
		};
/* End XCConfigurationList section */
	};
	rootObject = 1A1A1A101A1A1A1A /* Project object */;
}
PBXPROJ_EOF

echo "✅ Xcode project configuration created"

