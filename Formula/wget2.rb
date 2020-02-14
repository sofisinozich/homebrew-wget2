class Wget2 < Formula
  desc "Multithreaded metalink/file/website downloader"
  homepage "https://gitlab.com/gnuwget/wget2/"
  url "https://gnuwget.gitlab.io/wget2/wget2-latest.tar.gz"
  sha256 "0f4ead41aeee78f1e39a61606de9679dfff6cc8cb6747ed6c0473a03cdab2c5c"

  depends_on "gettext"
  depends_on "gnutls"
  depends_on "gpgme"
  depends_on "libpsl"
  depends_on "nghttp2"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system bin/"wget2", "-O", "/dev/null", "https://www.example.org/"
  end
end
