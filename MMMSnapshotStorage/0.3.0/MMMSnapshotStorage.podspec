#
# MMMSnapshotStorage. Part of MMMTemple.
# Copyright (C) 2016-2021 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMSnapshotStorage"
	s.version = "0.3.0"
	s.summary = "Simple snapshot-based persistence."
	s.description = s.summary
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

	s.subspec 'MMMPromisingResult' do |ss|
		ss.source_files = [ "Sources/MMMPromisingResult/*.swift" ]
	end

	s.subspec 'MMMStoredLoadable' do |ss|
		ss.source_files = [ "Sources/MMMStoredLoadable/*.swift" ]
		ss.dependency "MMMLoadable"
	end

	s.subspec 'Swift' do |ss|
		ss.source_files = [ "Sources/#{s.name}/*.swift" ]
		ss.dependency "#{s.name}/MMMPromisingResult"
		ss.dependency "#{s.name}/MMMStoredLoadable"
		ss.dependency "MMMLog"
		ss.dependency "MMMCommonCore"
	end

	s.test_spec 'Tests' do |ss|
		ss.source_files = "Tests/*.{m,swift}"
	end

	s.default_subspec = 'Swift'
end
