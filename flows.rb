# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Flows < Formula
  desc ""
  homepage ""
  url ""
  sha256 ""
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
    root_url "https://ohida.net/flows/bin"
    sha256 big_sur: "502434c1e75626d3e2bb9378acad151bad1f9426d7107d1853b38e9aad181551"
  end

  def pour_bottle?
    # Only needed if this formula has to check if using the pre-built
    # bottle is fine.
    true
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test flows`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

