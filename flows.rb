class Flows < Formula
  desc ""
  homepage ""
  url "https://ohida.net/flows/releases/flows-0.0.1.tar.gz"
  sha256 "efae7d9dce9f8c876388e257bab708d04c7da0078ff9f2eb190d84fd7ea9dd6a"
  license ""

  # depends_on "cmake" => :build
  depends_on "graphviz"
  depends_on "chrome-cli"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args

    bin.install 'flows'
  end

  bottle do
    root_url "https://ohida.net/flows/releases"
    sha256 big_sur: "efae7d9dce9f8c876388e257bab708d04c7da0078ff9f2eb190d84fd7ea9dd6a"
  end

  def pour_bottle?
    true
  end

  test do
    system "#{bin}/flows", "version"
  end
end

