class FiveSwiftlintAT100 < Formula
    desc "Tool to enforce FIVE's Swift style and conventions"
    homepage "https://github.com/fiveagency/Five-SwiftLint"
    url "https://github.com/fiveagency/homebrew-five-swiftlint/releases/download/1.0.0/five-swiftlint.tar.gz"
    license "MIT"
    sha256 "80eaffb43ee3167b9eb9fe77f1a6a599083bfae37b13d785318fdb2dbf68e85f"
    version "1.0.0"
  
    def install
        bin.install "five-swiftlint"
    end

      # Homebrew requires tests.
    test do
        assert_match "five-swiftlint version 1.0.0", shell_output("#{bin}/five-swiftlint -v", 2)
    end
end