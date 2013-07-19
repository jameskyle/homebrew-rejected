require 'formula'

class SblimSfcc < Formula
  version  "6007f3b"
  homepage 'https://sourceforge.net/projects/sblim/'
  url      'http://sourceforge.net/code-snapshots/git/s/sb/sblim/sfcc.git/sblim-sfcc-6007f3bf75a515e1f47cdbbab62fdc2f2ff981a3.zip'
  sha1     '16c1bfc2234ec8ff35deaacda04b05eacff1993b' 
  depends_on :libtool
  depends_on :autoconf
  depends_on :automake
  
  def install
    system "./autoconfiscate.sh"
    system "./configure","--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make", "install"
  end
end


