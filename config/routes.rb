Rails.application.routes.draw do
  namespace 'app' do
    namespace 'api' do
      namespace 'v1' do
        resources :patients
      end
    end
  end
end
