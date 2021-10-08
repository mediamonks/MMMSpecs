#
# MMMCardModal. Part of MMMTemple.
# Copyright (C) 2016-2021 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

	s.name = "MMMCardModal"
	s.version = "0.2.11"
	s.summary = "An iOS 13 insipred modal card presentation, however you can specify multiple stick postions for the presented VC"
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
	s.source_files = [ "Sources/#{s.name}/*.swift" ]
end
