class Pssh < Formula
  desc "TUI wrapper around SSH client with search"
  homepage "https://github.com/Pix-xiP/pssh"
  url "https://github.com/Pix-xiP/pssh/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "8cd87f5090d5e0e749c3ad3b876cadd83fdbb7f2c3a23208aeb3b89e9dd13c65"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pssh version")
  end
end
