#
# MMMAsyncLoadable. Part of MMMTemple.
# Copyright (C) 2016-2022 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMAsyncLoadable"
	s.version = "0.3.0"
	s.summary = "Use async/await with MMMLoadable"
	s.description =  s.summary
	s.homepage = "https://github.com/mediamonks/#{s.name}"
	s.license = "MIT"
	s.authors = "MediaMonks"
	s.source = { :git => "https://github.com/mediamonks/#{s.name}.git", :tag => s.version.to_s }

	s.ios.deployment_target = '13.0'
	s.watchos.deployment_target = '6.0'
	s.tvos.deployment_target = '13.0'
	s.macos.deployment_target = '10.15'

	s.swift_versions = '5.5'
	s.static_framework = true
	s.pod_target_xcconfig = {
		"DEFINES_MODULE" => "YES"
	}
	s.source_files = [ "Sources/#{s.name}/*.swift" ]
	s.dependency "MMMLoadable"
end
