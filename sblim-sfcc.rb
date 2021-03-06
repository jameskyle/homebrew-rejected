class SblimSfcc < Formula
  homepage 'https://sourceforge.net/projects/sblim/'
  url      'https://downloads.sourceforge.net/project/sblim/sblim-sfcc/sblim-sfcc-2.2.7.tar.bz2'
  sha1     '487f30a06fe599ca17340d2ecfd3c32644c96c67'
  depends_on :libtool
  depends_on :autoconf
  depends_on :automake
  depends_on "openssl"

  def install
    system "./configure","--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make", "install"
  end

  def test


  # based on the test at #https://github.com/Homebrew/homebrew/blob/master/Library/Formula/tinyxml.rb
  test do
    (testpath/"test.cpp").write <<-EOS.undent
      #include <cimc.h>
      int main()
      {
        return 0;
      }
    EOS
    system ENV.cxx, "test.cpp", "-lcimc", "-o", "test"
    system "./test"
  end


  end

end


