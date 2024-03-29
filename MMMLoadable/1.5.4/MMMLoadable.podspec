#
# MMMLoadable. Part of MMMTemple.
# Copyright (C) 2015-2020 MediaMonks. All rights reserved.
#

Pod::Spec.new do |s|

  s.name = "MMMLoadable"
  s.version = "1.5.4"
  s.summary = "A simple model for async calculations"
  s.description = "#{s.summary}."
  s.homepage = "https://github.com/mediamonks/#{s.name}"
  s.license = "MIT"
  s.authors = "MediaMonks"
  s.source = { :git => "https://github.com/mediamonks/#{s.name}.git", :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.watchos.deployment_target = '3.0'

  s.subspec 'ObjC' do |ss|
    ss.source_files = [ "Sources/#{s.name}ObjC/*.{h,m}" ]
    ss.dependency 'MMMCommonCore/ObjC'
    ss.dependency 'MMMLog/ObjC'
    ss.dependency 'MMMObservables/ObjC'
  end

  s.swift_versions = '4.2'
  s.static_framework = true
  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES"
  }
  s.subspec 'Swift' do |ss|
    ss.source_files = [ "Sources/#{s.name}/*.swift" ]
    ss.dependency "#{s.name}/ObjC"
    ss.dependency 'MMMCommonCore'
    ss.dependency 'MMMLog'
    ss.dependency 'MMMObservables'
  end

  s.test_spec 'Tests' do |ss|
	  ss.ios.deployment_target = '11.0'
    ss.source_files = "Tests/*.{m,swift}"
  end

	s.default_subspec = 'ObjC', 'Swift'
end
