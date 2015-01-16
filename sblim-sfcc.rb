class SblimSfcc < Formula
  version  "2.2.7"
  homepage 'https://sourceforge.net/projects/sblim/'
  url      'http://downloads.sourceforge.net/project/sblim/sblim-sfcc/sblim-sfcc-2.2.7.tar.bz2'
  sha1     '487f30a06fe599ca17340d2ecfd3c32644c96c67'
  depends_on :libtool
  depends_on :autoconf
  depends_on :automake
  depends_on :openssl

  def install
    system "./configure","--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make", "install"
  end

  def test
    # no executables, test to see if the man page has been installed
    system "man -W CMCIClient"
  end

end


