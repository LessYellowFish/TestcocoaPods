
Pod::Spec.new do |spec|



  spec.name         = "TestcocoaPods"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of TestcocoaPods."


  spec.description  = <<-DESC
测试
                   DESC

  spec.homepage     = "https://github.com/LessYellowFish/TestcocoaPods"


  spec.license      = "MIT"


  spec.author             = { "19920715zza" => "2601958675@qq.com" }


  spec.source       = { :git => "https://github.com/LessYellowFish/TestcocoaPods.git", :tag => "#{spec.version}" }



  spec.source_files  = "TestcocoaPods", "TestcocoaPods/TestcocoaPods/*.{h,m}"
  spec.exclude_files = "TestcocoaPods/TestcocoaPods"



end
