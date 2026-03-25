class Paneru < Formula
  desc "A sliding, tiling window manager for MacOS."
  homepage "https://github.com/karinushka/paneru"
  url "https://github.com/karinushka/paneru/archive/refs/tags/v0.3.7.tar.gz"
  sha256 "ec6086263e1c2cd71475d7eeba4b5fbd0b7de546ccbb9e58164e550978082233"
  license "MIT"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "paneru #{version}", shell_output("#{bin}/paneru --version")
  end
end
