#
# Be sure to run `pod lib lint MTMine.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'MTMine'                                   # pod 名
    s.version          = '0.1.3'                                    # 版本号
    s.summary          = 'A short description of MTMine.'           # pod 简介
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC                                    # pod 详细介绍
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://github.com/MTModule/MTMine'       # 主页 要填能打开的网址, 否则不能验证通过
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'  # 截图
    s.license          = { :type => 'MIT', :file => 'LICENSE' }     # 开源协议
    s.author           = { '33cun' => 'xiaoxin@evrazlabs.email' }   # 作者信息
    s.source           = { :git => 'https://github.com/MTModule/MTMine.git', :tag => s.version.to_s }  # 私有库的 Git 地址
    
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>' # 多媒体介绍地址
    
    s.ios.deployment_target = '8.0'                                 # 支持的平台及版本
    
    #   **/*表示Classes目录及其子目录下所有文件，如果有多个目录下则用逗号分开，如果需要在项目中分组显示，这里也要做相应的设置
    s.source_files = 'MTMine/Classes/**/*'                          # 需要暴露给外部调用的文件
    
    
    # 文件分组
    s.subspec 'UI' do |ui|
        ui.source_files = 'MTMine/Classes/UI/**/*'
    end
    
    s.subspec 'Data' do |data|
        data.source_files = 'MTMine/Classes/Data/**/*'
    end
    
    s.subspec 'Service' do |service|
        service.source_files = 'MTMine/Classes/Service/**/*'
    end
    
    
    # s.resource_bundles = {
    #   'MTMine' => ['MTMine/Assets/*.png']
    # }
    
    s.public_header_files = 'MTMine/Classes/XXMineTarget.h'             # 公开头文件地址
    s.frameworks = 'UIKit'                                              # 所需的framework，多个用逗号隔开
    s.dependency 'AFNetworking'                                         # 依赖关系，该项目所依赖的其他库，如果有多个需要填写多个s.dependency
    s.dependency 'Masonry'
    s.dependency 'CTMediator'
    
end



