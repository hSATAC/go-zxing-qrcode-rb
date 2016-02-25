require 'ffi'
require 'singleton'

module GoZXingQRCode
  class Encoder
    include Singleton
    extend FFI::Library
    if RUBY_PLATFORM =~ /linux/
      ffi_lib File.expand_path("./libgoqrencoder_x86_64_linux.so", File.dirname(__FILE__))
    elsif RUBY_PLATFORM =~ /darwin/
      ffi_lib File.expand_path("./libgoqrencoder_x86_64_darwin.so", File.dirname(__FILE__))
    end
    attach_function :generateQRCodeImage, [:string, :string, :int, :int], :void
  end
end
