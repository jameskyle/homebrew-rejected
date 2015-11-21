class Wsmancli < Formula
  homepage 'https://github.com/Openwsman/wsmancli'
  url 'https://github.com/Openwsman/wsmancli/archive/v2.6.0.tar.gz'
  sha1 '128159204ab22b58a67c92827ced67e70cd2e1f2'

  depends_on "openwsman"
  depends_on "autoconf"   => :build
  depends_on "automake"   => :build
  depends_on "libtool"    => :build
  depends_on "pkg-config" => :build
  depends_on "openssl"

  def install
    system "./bootstrap"
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "wsman --help"
  end
end
