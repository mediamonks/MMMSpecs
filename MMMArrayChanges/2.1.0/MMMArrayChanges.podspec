#
# MMMArrayChanges. Part of MMMTemple.
# Copyright (C) 2019 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMArrayChanges"
	s.version = "2.1.0"
	s.summary = "Helps finding (UITableView-compatible) differences between two arrays possibly of different types"
	s.description =  s.summary
	s.homepage = "https://github.com/mediamonks/MMMArrayChanges"
	s.license = "MIT"
	s.authors = "MediaMonks"
	s.source = { :git => "https://github.com/mediamonks/MMMArrayChanges.git", :tag => s.version.to_s }

	s.ios.deployment_target = '11.0'
	s.watchos.deployment_target = '2.0'
	s.tvos.deployment_target = '9.0'
	s.osx.deployment_target = '10.10'

	s.subspec 'ObjC' do |ss|
		ss.source_files = [ "Sources/#{s.name}ObjC/*.{h,m}" ]
	end

	s.swift_versions = '4.2'
	s.static_framework = true
	s.pod_target_xcconfig = {
		"DEFINES_MODULE" => "YES"
	}
	s.subspec 'Swift' do |ss|
		ss.source_files = [ "Sources/#{s.name}/*.swift" ]
	end

	s.test_spec 'TestsSwift' do |test_spec|
		test_spec.source_files = 'Tests/**/*.swift'
	end

	s.default_subspec = 'ObjC', 'Swift'

end
