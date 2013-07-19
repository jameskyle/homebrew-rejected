require 'formula'

class SblimSfcc < Formula
  version  "6007f3b"
  homepage 'https://sourceforge.net/projects/sblim/'
  head     'git://git.code.sf.net/p/sblim/sfcc', :using => :git, :tag => 'master'

  depends_on :libtool
  depends_on :autoconf
  depends_on :automake
  
  def install
    system "./autoconfiscate.sh"
    system "./configure","--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make", "install"
  end
end
