class Flows < Formula
  desc ""
  homepage ""
  url "https://ohida.net/flows/releases/flows-0.0.1.tar.gz"
  sha256 "f05b9387b026148e9936b4aa9f123e695c4b54938394da193bdfa8c4cfec1203"
  license ""

  depends_on "graphviz"
  depends_on "chrome-cli"

  def install
    bin.install "flows"
  end

  bottle do
    root_url "https://ohida.net/flows/releases"
    sha256 big_sur: "f05b9387b026148e9936b4aa9f123e695c4b54938394da193bdfa8c4cfec1203"
  end

  def pour_bottle?
    true
  end

  test do
    system "#{bin}/flows", "version"
  end
end
