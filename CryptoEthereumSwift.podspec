Pod::Spec.new do |spec|
  spec.name = 'CryptoEthereumSwift'
  spec.version = '2.0.0'
  spec.summary = 'CryptoEthereumSwift implements necessary cryptographic features for Ethereum.'
  spec.description = <<-DESC
                       CryptoEthereumSwift implements necessary cryptographic features for Ethereum. This framwork is currently used in EthereumKit.
                       ```
                    DESC
  spec.homepage = 'https://github.com/horizontalsystems/CryptoEthereumSwift'
  spec.license = { :type => 'Apache 2.0', :file => 'LICENSE' }
  spec.author = { 'Ryo Fukuda' => 'yuzushioh' }

  spec.source = { git: 'https://github.com/horizontalsystems/CryptoEthereumSwift', tag: "v#{spec.version}" }
  spec.source_files = 'CryptoEthereumSwift/**/*.{h,m,swift}'
  spec.module_map = 'CryptoEthereumSwift/Support Files/CryptoEthereumSwift.modulemap'
  spec.ios.deployment_target = '9.0'
  spec.swift_version = '4.0'
  spec.pod_target_xcconfig = { 'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES',
                               'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                               'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}/CryptoEthereumSwift/Libraries',
                               'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/CryptoEthereumSwift/Libraries/openssl/include" "${PODS_ROOT}/CryptoEthereumSwift/Libraries/secp256k1/include"',
                               'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/CryptoEthereumSwift/Libraries/openssl/lib" "${PODS_ROOT}/CryptoEthereumSwift/Libraries/secp256k1/lib"' }
  spec.preserve_paths = ['Setup', 'Libraries']
  spec.dependency 'CryptoSwift'
end