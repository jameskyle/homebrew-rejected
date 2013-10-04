require 'formula'

class SblimSfcc < Formula
  version  "2.2.6a"
  homepage 'https://sourceforge.net/projects/sblim/'
  url      'http://sourceforge.net/code-snapshots/git/s/sb/sblim/sfcc.git/sblim-sfcc-274829aaad3deaeabe712ae7cf7ef6c877023e0b.zip'
  sha1     '7f9fbd7a880e85748a017517f8f7ee1cdf55a916'
  depends_on :libtool
  depends_on :autoconf
  depends_on :automake
  
  def install
    system "./autoconfiscate.sh"
    system "./configure","--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make", "install"
  end
end


