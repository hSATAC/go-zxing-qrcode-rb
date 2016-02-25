require 'ffi'
require 'singleton'

module GoZXingQRCode
  class Encoder
    include Singleton
    extend FFI::Library
    ffi_lib File.expand_path("./libgoqrencoder.so", File.dirname(__FILE__))
    attach_function :generateQRCodeImage, [:string, :string, :int, :int], :void
  end
end
