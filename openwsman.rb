require "formula"

class Openwsman < Formula
  homepage "http://openwsman.github.io"
  url "https://github.com/Openwsman/openwsman/archive/v2.4.10.tar.gz"
  sha1 "c03d4d01a45fb3eac767188bd1a6ec44d0484a1d"

  patch do
    # Fix build problem when using a strict compiler, pull request #41.
    url "https://github.com/dholm/openwsman/commit/7f38d6e.diff"
    sha1 "303843b9628ede2ba796d06b9ea31be98b95b300"
  end

  depends_on "libxml2"
  depends_on "sblim-sfcc"
  depends_on "automake"   => :build
  depends_on "autoconf"   => :build
  depends_on "libtool"    => :build
  depends_on "pkg-config" => :build

  def install
    system "./autoconfiscate.sh"
    system "./configure", "--disable-more-warnings",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
