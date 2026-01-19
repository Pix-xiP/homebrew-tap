class Pssh < Formula
  desc "TUI wrapper around SSH client with search"
  homepage "https://github.com/Pix-xiP/pssh"
  url "https://github.com/Pix-xiP/pssh/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f4347f3e7ea4b6840ad0b592eee314bd74c25e1d08a607b90bbbd3610433bdee"
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

