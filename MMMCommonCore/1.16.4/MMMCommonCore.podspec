#
# MMMCommonCore. Part of MMMTemple.
# Copyright (C) 2015-2025 Monks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMCommonCore"
	s.version = "1.16.4"
	s.summary = "Small bits and pieces reused in many pods from MMMTemple"
	s.description = s.summary
	s.homepage = "https://github.com/mediamonks/#{s.name}"
	s.license = "MIT"
	s.authors = "Monks"
	s.source = { :git => "https://github.com/mediamonks/#{s.name}.git", :tag => s.version.to_s }

	s.ios.deployment_target = '14.0'
	s.watchos.deployment_target = '4.0'
	s.tvos.deployment_target = '14.0'

	s.subspec 'ObjC' do |ss|
		ss.source_files = [ "Sources/#{s.name}ObjC/*.{h,m}" ]
		ss.exclude_files = [ "Sources/#{s.name}ObjC/include/#{s.name}ObjC.h" ]
	end

	s.static_framework = true

	s.subspec 'Swift' do |ss|
		ss.source_files = [ "Sources/#{s.name}/*.swift" ]
		ss.dependency "#{s.name}/ObjC"
	end

	s.test_spec 'Tests' do |ss|
		ss.source_files = "Tests/*.{m,swift}"
		# Well, it does not, but otherwise we cannot override any settings (e.g. excluded archs for M1) via Podfile,
		# because there won't be a target corresponding to the app host.
		ss.requires_app_host = true
	end
end
