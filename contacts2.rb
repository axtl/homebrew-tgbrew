require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Contacts2 < Formula
  homepage 'https://github.com/tgray/contacts'
  url 'https://github.com/tgray/contacts/archive/0.2.tar.gz'
  sha1 '8a74376012925159363fb76e01110cacda9b42f4'

  conflicts_with 'contacts', :because => 'contacts is no longer maintained and this formula replaces it.'


  def install
    system "make"
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test contacts`.
    system "contacts -v"
  end
end
