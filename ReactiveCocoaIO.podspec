Pod::Spec.new do |s|
  s.name         = "ReactiveCocoaIO"
  s.version      = "0.0.1"
  s.summary      = "Reactive file management framework built on top of ReactiveCocoa."
  s.homepage     = "https://github.com/ReactiveCocoa/ReactiveCocoaIO"
  s.author       = { "ReactiveCocoa" => "ReactiveCocoa" }
  s.source       = { :git => "https://github.com/ReactiveCocoa/ReactiveCocoaIO.git"}
  s.license      = 'Simplified BSD License'
  s.description  = "ReactiveCocoaIO is a framework for accessing and manipulating a file system through signals, based on ReactiveCocoa."
 
  s.requires_arc = true
  s.ios.deployment_target = '6.1'
  s.osx.deployment_target = '10.7'
 
  s.source_files = 'ReactiveCocoaIO/*.{h,m}', 'ReactiveCocoaIO/**/*.{h,m}'
  s.dependency 'ReactiveCocoa', '~> 2.0'
 
  s.frameworks = 'Foundation'
 
  s.prefix_header_contents = <<-EOS
  #ifdef __OBJC__
 
    #import <libkern/OSAtomic.h>
    #import <ReactiveCocoaIO/ReactiveCocoaIO.h>
    #import <ReactiveCocoa/ReactiveCocoa.h>
    #import <ReactiveCocoa/EXTScope.h>
 
  #endif /* __OBJC__ */
  EOS
 
end