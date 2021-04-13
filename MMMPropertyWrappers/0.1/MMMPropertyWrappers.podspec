#
# MMMPropertyWrappers. Part of MMMTemple.
# Copyright (C) 2015-2020 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMPropertyWrappers"
	s.version = "0.1"
	s.summary = "Small, useful, property wrappers."
	s.description =  s.summary
	s.homepage = "https://github.com/mediamonks/#{s.name}"
	s.license = "MIT"
	s.authors = "MediaMonks"
	s.source = { :git => "https://github.com/mediamonks/#{s.name}.git", :tag => s.version.to_s }

	s.ios.deployment_target = '11.0'

	s.swift_versions = '5.3'
	s.static_framework = true
	s.pod_target_xcconfig = {
		"DEFINES_MODULE" => "YES"
	}
	s.subspec 'Swift' do |ss|
		ss.dependency 'MMMObservables'

		ss.source_files = [ "Sources/#{s.name}/**/*.swift" ]
	end

	# CwlPreconditionTesting doesn't support CocoaPods.
	#s.test_spec 'Tests' do |ss|
	#	ss.source_files = "Tests/**/*.swift"
	#end

	s.default_subspec = 'Swift'
end
