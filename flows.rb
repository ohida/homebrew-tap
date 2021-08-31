class Flows < Formula
  desc ""
  homepage ""
  url "https://ohida.net/flows/releases/flows-0.0.1.tar.gz"
  sha256 "3577a38079becb131248d7606feac7cc2fc23e11fc6aec50eb577fa369f151fb"
  license ""

  depends_on "graphviz"
  depends_on "chrome-cli"

  def install
    bin.install "flows"
  end

  bottle do
    root_url "https://ohida.net/flows/releases"
    sha256 big_sur: "3577a38079becb131248d7606feac7cc2fc23e11fc6aec50eb577fa369f151fb"
  end

  def pour_bottle?
    true
  end

  test do
    system "#{bin}/flows", "version"
  end
end