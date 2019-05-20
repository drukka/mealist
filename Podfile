platform :ios, '11.0'

def shared_pods
    pod 'PromiseKit/Alamofire', '~> 6.0'
    pod 'Swinject'
    pod 'Locksmith'
    pod 'Kingfisher'
    pod 'SkeletonView'
    pod 'NVActivityIndicatorView'
end

target 'Mealist' do
  use_frameworks!
  inhibit_all_warnings!
  shared_pods

  target 'MealistTests' do
    inherit! :search_paths
  end

end
