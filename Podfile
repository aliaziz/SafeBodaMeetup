# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

def globalPods
    pod 'RxSwift',    '~> 4.4.0'
end

target 'MeetupDemo' do
  use_frameworks!
  globalPods
  pod 'Swinject', '2.5.0'

end

target 'MeetupDemoData' do
  use_frameworks!
  globalPods

  target 'MeetupDemoDataTests' do
    inherit! :search_paths
  end

end

target 'MeetupDemoDomain' do
  use_frameworks!
  globalPods

  target 'MeetupDemoDomainTests' do
    inherit! :search_paths
  end
end
