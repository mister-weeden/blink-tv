export PATH="$PWD/chromium_tools/depot_tools:$PATH"
# Check if we have the necessary tools
export gclient=$(which gclient)
export gn=$(which gn)
export ninja=$(which ninja)

cd ./chromium_tools/depot_tools

echo "solutions = [ {   "name": "src",   "url": "https://chromium.googlesource.com/chromium/src.git",   "managed": False,   "custom_deps": {},   "custom_vars": {     "checkout_ios": True,   }, },]target_os = ["ios", "mac"]" > .gclient
echo "Fetching Chromium source code..."
echo "This will take a significant amount of time and disk space (20+ GB)"
read -p "Press enter to continue or Ctrl+C to cancel"

echo "Starting gclient sync - this may take 30+ minutes..."
gclient sync --no-history --shallow
echo "Chromium source fetch initiated"

