class Flows < Formula
  desc ""
  homepage ""
  url "https://ohida.net/flows/releases/flows-0.0.1.tar.gz"
  sha256 "388fa45970dbad9cd5bf2aae23fa581f7cb8f2ee09440f5813042645547f9841"
  license ""

  depends_on "graphviz"
  depends_on "chrome-cli"

  def install
    bin.install "flows"
  end

  bottle do
    root_url "https://ohida.net/flows/releases"
    sha256 big_sur: "388fa45970dbad9cd5bf2aae23fa581f7cb8f2ee09440f5813042645547f9841"
  end

  def pour_bottle?
    true
  end

  test do
    system "#{bin}/flows", "version"
  end
end