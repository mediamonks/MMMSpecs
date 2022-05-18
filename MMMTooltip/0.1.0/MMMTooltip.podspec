#
# MMMLazyGrid. Part of MMMTemple.
# Copyright (C) 2016-2021 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMTooltip"
	s.version = "0.1.0"
	s.summary = "Simple, auto-layout based, customisable tooltip."
	s.description =  s.summary
	s.homepage = "https://github.com/mediamonks/#{s.name}"
	s.license = "MIT"
	s.authors = "MediaMonks"
	s.source = { :git => "https://github.com/mediamonks/#{s.name}.git", :tag => s.version.to_s }

	s.ios.deployment_target = '11.0'

	s.swift_versions = '4.2'
	s.static_framework = true
	s.pod_target_xcconfig = {
		"DEFINES_MODULE" => "YES"
	}

	s.subspec 'Swift' do |ss|
		ss.source_files = [ "Sources/#{s.name}/*.swift", "Sources/#{s.name}/*/*.swift" ]

		ss.dependency "MMMTackKit", "~> 0.8.1"
		ss.dependency "MMMCommonCore", "~> 1.7.0"
	end

	s.test_spec 'Tests' do |ss|
		ss.source_files = "Tests/*.{m,swift}"
	end

	s.default_subspec = 'Swift'
end
