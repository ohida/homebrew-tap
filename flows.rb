class Flows < Formula
  desc ""
  homepage ""
  url "https://ohida.net/flows/releases/flows-0.0.1.tar.gz"
  sha256 "502434c1e75626d3e2bb9378acad151bad1f9426d7107d1853b38e9aad181551"
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
    sha256 big_sur: "502434c1e75626d3e2bb9378acad151bad1f9426d7107d1853b38e9aad181551"
  end

  def pour_bottle?
    true
  end

  test do
    system "#{bin}/flows", "version"
  end
end

