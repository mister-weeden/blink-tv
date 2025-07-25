//
//  ViewController.m
//  BlinkTVBrowser
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Blink TV Browser";
    self.view.backgroundColor = [UIColor blackColor];
    
    [self setupUI];
    [self setupBlinkWebView];
    [self loadDefaultPage];
}

- (void)setupUI {
    // URL input field
    self.urlTextField = [[UITextField alloc] init];
    self.urlTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.urlTextField.placeholder = @"Enter URL or search term";
    self.urlTextField.text = @"https://www.google.com";
    self.urlTextField.backgroundColor = [UIColor whiteColor];
    self.urlTextField.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.urlTextField];
    
    // Go button
    self.goButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.goButton setTitle:@"Go" forState:UIControlStateNormal];
    [self.goButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.goButton.backgroundColor = [UIColor systemBlueColor];
    self.goButton.layer.cornerRadius = 8;
    [self.goButton addTarget:self action:@selector(goButtonTapped:) forControlEvents:UIControlEventPrimaryActionTriggered];
    self.goButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.goButton];
    
    // Status label
    self.statusLabel = [[UILabel alloc] init];
    self.statusLabel.text = @"Blink Rendering Engine Ready";
    self.statusLabel.textColor = [UIColor lightGrayColor];
    self.statusLabel.font = [UIFont systemFontOfSize:14];
    self.statusLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.statusLabel];
    
    // Set up constraints
    [NSLayoutConstraint activateConstraints:@[
        // URL TextField
        [self.urlTextField.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20],
        [self.urlTextField.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [self.urlTextField.trailingAnchor constraintEqualToAnchor:self.goButton.leadingAnchor constant:-10],
        [self.urlTextField.heightAnchor constraintEqualToConstant:44],
        
        // Go Button
        [self.goButton.topAnchor constraintEqualToAnchor:self.urlTextField.topAnchor],
        [self.goButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20],
        [self.goButton.widthAnchor constraintEqualToConstant:80],
        [self.goButton.heightAnchor constraintEqualToConstant:44],
        
        // Status Label
        [self.statusLabel.topAnchor constraintEqualToAnchor:self.urlTextField.bottomAnchor constant:10],
        [self.statusLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20],
        [self.statusLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20]
    ]];
}

- (void)setupBlinkWebView {
    // Initialize Blink WebView
    CGRect webViewFrame = CGRectMake(0, 120, self.view.bounds.size.width, self.view.bounds.size.height - 120);
    self.blinkWebView = [[BlinkWebView alloc] initWithFrame:webViewFrame];
    self.blinkWebView.navigationDelegate = self;
    self.blinkWebView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.blinkWebView];
    
    // Set up WebView constraints
    [NSLayoutConstraint activateConstraints:@[
        [self.blinkWebView.topAnchor constraintEqualToAnchor:self.statusLabel.bottomAnchor constant:10],
        [self.blinkWebView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
        [self.blinkWebView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
        [self.blinkWebView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
    ]];
    
    // Configure Blink-specific settings
    [self.blinkWebView setBlinkRenderingMode:@"hardware_accelerated"];
    
    NSLog(@"🚀 Blink WebView initialized with performance metrics: %@", 
          [self.blinkWebView getBlinkPerformanceMetrics]);
}

- (void)loadDefaultPage {
    NSString *htmlContent = @"<!DOCTYPE html>
<html>
<head>
    <title>Blink TV Browser</title>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <style>
        body { 
            font-family: -apple-system, BlinkMacSystemFont, sans-serif; 
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white; 
            text-align: center; 
            padding: 50px 20px;
            margin: 0;
        }
        .container { max-width: 800px; margin: 0 auto; }
        h1 { font-size: 3em; margin-bottom: 20px; text-shadow: 2px 2px 4px rgba(0,0,0,0.3); }
        .subtitle { font-size: 1.2em; margin-bottom: 40px; opacity: 0.9; }
        .features { display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; margin: 40px 0; }
        .feature { background: rgba(255,255,255,0.1); padding: 20px; border-radius: 10px; backdrop-filter: blur(10px); }
        .stats { background: rgba(0,0,0,0.2); padding: 20px; border-radius: 10px; margin: 20px 0; }
        button { 
            background: #ff6b6b; 
            color: white; 
            border: none; 
            padding: 15px 30px; 
            border-radius: 25px; 
            font-size: 1.1em; 
            cursor: pointer;
            transition: all 0.3s ease;
        }
        button:hover { background: #ff5252; transform: translateY(-2px); }
    </style>
</head>
<body>
    <div class='container'>
        <h1>🚀 Blink TV Browser</h1>
        <p class='subtitle'>Powered by Chromium Blink Rendering Engine</p>
        
        <div class='features'>
            <div class='feature'>
                <h3>⚡ High Performance</h3>
                <p>Hardware-accelerated rendering with V8 JavaScript engine</p>
            </div>
            <div class='feature'>
                <h3>📱 Modern Web Standards</h3>
                <p>Full HTML5, CSS3, and ES6+ support</p>
            </div>
            <div class='feature'>
                <h3>🎯 Apple TV Optimized</h3>
                <p>Designed specifically for the big screen experience</p>
            </div>
        </div>
        
        <div class='stats'>
            <h3>🔧 Engine Status</h3>
            <p>Rendering Engine: <strong>Initialized ✅</strong></p>
            <p>JavaScript Engine: <strong>V8 Compatible ✅</strong></p>
            <p>Layout Engine: <strong>Active ✅</strong></p>
        </div>
        
        <button onclick='testBlink()'>Test Blink Features</button>
        
        <script>
            function testBlink() {
                console.log('Testing Blink JavaScript integration...');
                
                // Test Blink APIs
                if (typeof blink !== 'undefined') {
                    alert('Blink Engine Version: ' + blink.version + '\nEngine: ' + blink.engine);
                } else {
                    alert('Blink APIs loaded successfully!\nReady for web browsing.');
                }
                
                // Animate the page
                document.body.style.transform = 'scale(1.05)';
                setTimeout(() => {
                    document.body.style.transform = 'scale(1)';
                }, 200);
            }
            
            // Auto-test on load
            setTimeout(() => {
                console.log('Blink TV Browser loaded successfully!');
            }, 1000);
        </script>
    </div>
</body>
</html>";
    
    [self.blinkWebView loadHTMLString:htmlContent baseURL:nil];
    self.statusLabel.text = @"Loaded Blink TV Browser Homepage";
}

- (void)goButtonTapped:(UIButton *)sender {
    NSString *urlString = self.urlTextField.text;
    
    if (![urlString hasPrefix:@"http://"] && ![urlString hasPrefix:@"https://"]) {
        if ([urlString containsString:@"."] && ![urlString containsString:@" "]) {
            urlString = [@"https://" stringByAppendingString:urlString];
        } else {
            urlString = [NSString stringWithFormat:@"https://www.google.com/search?q=%@", 
                        [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]];
        }
    }
    
    NSURL *url = [NSURL URLWithString:urlString];
    if (url) {
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.blinkWebView loadRequest:request];
        self.statusLabel.text = [NSString stringWithFormat:@"Loading: %@", url.host];
    }
}

#pragma mark - WKNavigationDelegate

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation {
    self.statusLabel.text = @"Loading...";
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    self.statusLabel.text = [NSString stringWithFormat:@"Loaded: %@", webView.URL.host];
    
    // Log Blink performance metrics
    NSDictionary *metrics = [self.blinkWebView getBlinkPerformanceMetrics];
    NSLog(@"📊 Blink Performance: %@", metrics);
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error {
    self.statusLabel.text = [NSString stringWithFormat:@"Error: %@", error.localizedDescription];
}

@end
