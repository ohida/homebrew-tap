class Flows < Formula
  desc ""
  homepage ""
  url "https://ohida.net/flows/releases/flows-0.0.2.tar.gz"
  sha256 "193b76daff91f8cc6de7ee466c0fc4d7dace516bbb50f5acc9e806108bcbeb38"
  license ""

  depends_on "graphviz"
  depends_on "chrome-cli"

  def install
    bin.install "flows"
  end

  bottle do
    root_url "https://ohida.net/flows/releases"
    sha256 big_sur: "193b76daff91f8cc6de7ee466c0fc4d7dace516bbb50f5acc9e806108bcbeb38"
  end

  def pour_bottle?
    true
  end

  test do
    system "#{bin}/flows", "version"
  end
end
