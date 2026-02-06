class Weave < Formula
  desc "Weave is an orchestration tool, Lua describes intent, GO guarantees execution"
  homepage "https://github.com/pix-xip/weave"
  url "https://github.com/Pix-xiP/weave/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "skip"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.Version=#{version}"
    system "go", "build", "cmd/weave/main.go", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/weave version")
  end

  def caveats 
    <<~EOS
      To use weave, you need a valid `Weavefile.lua` in you current directory.
    EOS
  end
end
