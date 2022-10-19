Homebrew Formula for the FIVE's forked [Swiftlint](https://github.com/fiveagency/Five-SwiftLint) tap distribution

### Installation (compiled binary)

1. Make sure you have [Homebrew](https://brew.sh/) installed
2. Tap forked swiftlint repo
   ```
   brew tap fiveagency/five-swiftlint
   ```
3. Install forked swiftlint
   ```
   brew install five-swiftlint
   ```
4. Run it inside swift source code directory using:
   ```
   five-swiftlint lint (--no-cache)
   ```

## Updating homebrew formula

SwiftLint release process is already automated: custom BitRise runner script (named Five-SwiftLint on company account) bumps formula version and updates binary download link automatically on every PR that gets merged into `main` branch on SwiftLint fork Github repository. When a new release is being built, the script backups the current formula with a version suffix (e.g. five-swiftlint@1.0.0) which allows installing specific versions on demand. 

### Local updating formula script (in case Bitrise webhook fails)

Clone fiveagency/Five-Swiftlint repository and checkout main branch. Open repository folder in terminal and run script named `./create-new-release.sh` - follow interactive guide to create new Github release and homebrew binary. That's it. You released a new version of FIVE-Swiftlint!

### Manual updating (manual Github release)

1. Build forked Swiftlint binary 
   ``` bash
   make build
   ```
2. Compress it to gzipped tarball (greatly reduces binary size)
   ```
   tar -czvf five-swiftlint.tar.gz ./.build/universalfive-swiftlint
   ```
3. Make Github release tag with binary as gzipped tarball compressed attachment (five-swiftlint.tar.gz) on [this repo](https://github.com/fiveagency/homebrew-five-swiftlint/releases)
4. Copy the URL of the attached binary
5. Get sha256 hash of gzipped tarball with (if not installed, install sha2 with homebrew)
   ```bash
   sha2 -256 -q path/to/five-swiftlint.tar.gz
   ```
6. Update formula five-swiftlint.rb in this repo with the new URL, sha256 hash and release version that corresponds to one on **the** latest Github release
7.  Merge it to main

For more info on creating formulas and taps, read:\

[Creating Homebrew taps for private internal tools](https://medium.com/prodopsio/creating-homebrew-taps-for-private-internal-tools-c41363d58ab0)\
[HomeBrew docs](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap)