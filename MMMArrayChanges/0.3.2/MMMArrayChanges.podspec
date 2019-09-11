#
# MMMArrayChanges.
# Copyright (C) 2019 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMArrayChanges"
	s.version = "0.3.2"
	s.summary = "Helps with finding (UITableView-compatible) differences between two lists of items, possibly of different types"
	s.description =  s.summary
	s.homepage = "https://github.com/mediamonks/MMMArrayChanges"
	s.license = "MIT"
	s.authors = "MediaMonks"
	s.source = { :git => "https://github.com/mediamonks/MMMArrayChanges.git", :tag => s.version.to_s }
	
	s.platform = :ios, '11.0'

	s.subspec 'ObjC' do |ss|		
		ss.ios.source_files = [ 'Classes/*.{h,m}' ]
	end
	
	s.swift_versions = '4.2'
	s.static_framework = true	
	s.pod_target_xcconfig = {
		"DEFINES_MODULE" => "YES"
	}	
	s.subspec 'Swift' do |ss|
		ss.source_files = [ 'Classes/*.swift' ]	
	end

	s.test_spec 'TestsSwift' do |test_spec|
		test_spec.source_files = 'Tests/*.swift'
	end  	

	s.default_subspec = 'Swift'	
end
