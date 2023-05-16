#
# MMMSnapshotStorage. Part of MMMTemple.
# Copyright (C) 2016-2023 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMSnapshotStorage"
	s.version = "0.6.1"
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

	s.subspec 'Core' do |ss|
		ss.source_files = [ "Sources/#{s.name}/*.swift" ]
		ss.dependency "MMMLog"
		ss.dependency "MMMCommonCore"
		ss.dependency "MMMPromisingResult"
	end

	s.subspec 'MMMStoredLoadable' do |ss|
		ss.source_files = [ "Sources/MMMStoredLoadable/*.swift" ]
		ss.dependency "#{s.name}/Core"
		ss.dependency "MMMCommonCore"
		ss.dependency "MMMLoadable"
		ss.dependency "MMMLog"
		ss.dependency "MMMPromisingResult"
	end

	s.test_spec 'Tests' do |ss|
		ss.source_files = "Tests/*.{m,swift}"
	end
end
