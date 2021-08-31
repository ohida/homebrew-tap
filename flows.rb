class Flows < Formula
  desc ""
  homepage ""
  url "https://ohida.net/flows/releases/flows-0.0.1.tar.gz"
  sha256 "a54c50eef5481b2812a8b4f91f21c3853aefd9f3a00fc641059d88ed4ce681a5"
  license ""

  depends_on "graphviz"
  depends_on "chrome-cli"

  def install
    bin.install "flows"
  end

  bottle do
    root_url "https://ohida.net/flows/releases"
    sha256 big_sur: "a54c50eef5481b2812a8b4f91f21c3853aefd9f3a00fc641059d88ed4ce681a5"
  end

  def pour_bottle?
    true
  end

  test do
    system "#{bin}/flows", "version"
  end
end
