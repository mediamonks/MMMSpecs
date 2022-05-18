#
# MMMPromisingResult. Part of MMMTemple.
# Copyright (C) 2016-2021 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMPromisingResult"
	s.version = "0.1.0"
	s.summary = "A simple promising response for async operations"
	s.description =  s.summary
	s.homepage = "https://github.com/mediamonks/#{s.name}"
	s.license = "MIT"
	s.authors = "Media.Monks"
	s.source = { :git => "https://github.com/mediamonks/#{s.name}.git", :tag => s.version.to_s }

	s.ios.deployment_target = '11.0'
	s.watchos.deployment_target = '3.0'
	s.tvos.deployment_target = '10.0'
	s.macos.deployment_target = '10.12'

	s.swift_versions = '5.1'
	s.static_framework = true
	s.pod_target_xcconfig = {
		"DEFINES_MODULE" => "YES"
	}

	s.subspec 'Swift' do |ss|
		ss.source_files = [ "Sources/#{s.name}/*.swift" ]
	end

	s.test_spec 'Tests' do |ss|
		ss.source_files = "Tests/*.{m,swift}"
	end

	s.default_subspec = 'Swift'
end
