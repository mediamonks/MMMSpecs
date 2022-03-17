#
# MMMCataphote. Part of MMMTemple.
# Copyright (C) 2016-2021 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMCataphote"
	s.version = "1.0.3"
	s.summary = "Limited reflection for Decodable types"
	s.author = "MediaMonks"
	s.license = "MIT"
	s.homepage = "https://github.com/mediamonks/#{s.name}"
	s.source = { :git => "https://github.com/mediamonks/#{s.name}.git", :tag => s.version.to_s }

	s.ios.deployment_target = '11.0'
	s.watchos.deployment_target = '2.0'
	s.tvos.deployment_target = '9.0'
	s.osx.deployment_target = '10.10'
	
	s.ios.source_files = [ "Sources/MMMCataphote/**/*.swift" ]

	s.swift_versions = '4.2'
	s.static_framework = true	
	s.pod_target_xcconfig = { "DEFINES_MODULE" => "YES" }	
  
  s.test_spec 'Tests' do |ts|
    ts.source_files = "Tests/**/*.swift"
  end
end
