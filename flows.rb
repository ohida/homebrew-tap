class Flows < Formula
  desc ""
  homepage ""
  url "https://ohida.net/flows/releases/flows-0.0.2.tar.gz"
  sha256 "fbff1f6d4e42a7c4b4e786ecce8ffbed3411ab3d5d1d174f8cd3826ff50ffbae"
  license ""

  depends_on "graphviz"
  depends_on "chrome-cli"

  def install
    bin.install "flows"
  end

  bottle do
    root_url "https://ohida.net/flows/releases"
    sha256 big_sur: "fbff1f6d4e42a7c4b4e786ecce8ffbed3411ab3d5d1d174f8cd3826ff50ffbae"
  end

  def pour_bottle?
    true
  end

  test do
    system "#{bin}/flows", "version"
  end
end
