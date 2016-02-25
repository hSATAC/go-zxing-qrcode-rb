# GoZxingQRCode

Go QR Code encoder Ruby wrapper.

## Installation

Add this line to your application's Gemfile:

    gem 'go-zxing-qrcode'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install go-zxing-qrcode

## Usage

```ruby
# Parameters: value, filepath, eclevel(0~3), gridSize
GoZXingQRCode::Encoder.generateQRCodeImage("string to encode", "image.png", 3,5)
````

## Contributing

1. Fork it ( https://github.com/hSATAC/go-zxing-qrcode-rb )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
