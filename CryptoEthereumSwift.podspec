Pod::Spec.new do |spec|
  spec.name = 'CryptoEthereumSwift'
  spec.version = '2.0.0'
  spec.summary = 'CryptoEthereumSwift implements necessary cryptographic features for Ethereum.'
  spec.description = <<-DESC
                       CryptoEthereumSwift implements necessary cryptographic features for Ethereum. This framwork is currently used in EthereumKit.
                       ```
                    DESC
  spec.homepage = 'https://github.com/pedromcunha/CryptoEthereumSwift'
  spec.license = { :type => 'Apache 2.0', :file => 'LICENSE' }
  spec.author = { 'Ryo Fukuda' => 'yuzushioh' }

  spec.source = { git: 'https://github.com/pedromcunha/CryptoEthereumSwift', tag: "v#{spec.version}" }
  spec.source_files = 'CryptoEthereumSwift/**/*.{h,m,swift}'
  spec.ios.deployment_target = '9.0'
  spec.swift_version = '4.0'
  spec.dependency 'CryptoSwift'
end