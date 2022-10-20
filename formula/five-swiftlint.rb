class FiveSwiftlint < Formula
    desc "Tool to enforce FIVE's Swift style and conventions"
    homepage "https://github.com/fiveagency/Five-SwiftLint"
    url "https://github.com/fiveagency/homebrew-five-swiftlint/releases/download/1.0.1/five-swiftlint.tar.gz"
    license "MIT"
    sha256 "4abfb6abff82957406dcb3818e092412ae6c08ad6df2beaa4eb05f195d493e8f"
    version "1.0.1"
  
    def install
        bin.install "five-swiftlint"
    end

      # Homebrew requires tests.
    test do
        assert_match "five-swiftlint version 1.0.0", shell_output("#{bin}/five-swiftlint -v", 2)
    end
end