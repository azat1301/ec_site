class PagesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :home # skip_before_actionは、Deviseが提供するメソッドで、特定のコントローラのアクションに対して認証をスキップすることができます。今回は、トップページの認証をスキップしたいと思います。
end
