### 访问属性

```
@user.attributes['display']
@user[:display]
```

***


nil? empty? 是ruby的方法

blank? 是rails的方法

.nil? 判断对象是否存在

.empty?  对象已经存在，判断是否为空字段，比如一个字符串是否为空串，或者一个数组中是否有值。
有点像判断长度是否为零

.blank?   相当于同时满足 .nil? 和 .empty? 。

railsAPI中的解释是如果对象是：false, empty, 空白字符.

比如说： "", " ", nil , [], 和{}都算是blank。

（object.blank? 相当于 object.nil?||object.empty?)

.present?  存在么


***
request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first

***

 rails 中的 scss 能把 image-url 转化了
ƒ
 原生的 scss是没 image-url 的

 image-url 是 sass-rails 提供的


 ```
 # _mixin_rails.scss
@function image-url($url) {
  @return "url(#{$url})"
}

@function image-path($url) {
  @return "url(#{$url})"
}

@function asset-url($url) {
  @return "url(#{$url})"
}

@function asset-path($url) {
  @return "url(#{$url})"
}

```
***

```
bundle exec rails console production
```

***

```
 <%= simple_format @event.description %>
```

http://stackoverflow.com/questions/341143/can-rails-routing-helpers-i-e-mymodel-pathmodel-be-used-in-models

```
# Rails, get resource path in model
class MyClass < ActiveRecord::Base
  include Rails.application.routes.url_helpers
end
```

```
en:
  activerecord:
    models:
      user: Dude
    attributes:
      user:
        login: "Handle"
      # will translate User attribute "login" as "Handle"

```

Then User.model_name.human will return "Dude" and User.human_attribute_name("login") will return "Handle".


***

mina 部署的时候不能识别rails env  是个bug

rake assets:clobber

[figaro](https://github.com/laserlemon/figaro)


mina deploy:cleanup  清理旧的release，只保留5个

***

[typeahead.js](https://github.com/twitter/typeahead.js) is a fast and fully-featured autocomplete library

***

tagit 禁用 autocomplete

```
  $("#share_tag_list").tagit({
    singleField: true,
    autocomplete: { disabled: true }, //禁用 autocomplete
    singleFieldNode: $('#share_tag_list')
  });
```

 ```
 UPDATE shares SET comments_count = COALESCE(comments_count, 0) + 1 WHERE id = 3
 ```

 ***

 ```
  def go_back
    begin
      redirect_to :back
    rescue ActionController::RedirectBackError
      redirect_to root_path
    end
  end
  ```

  ***

  ```
  # mina 强制解锁
  mina deploy:force_unlock
  ```

  ***

  ```
  Time.now.strftime("%Y-%m-%d %H:%M:%S")
  ```


  ***

  [Full url for an image-path in Rails 3](http://stackoverflow.com/questions/5484809/full-url-for-an-image-path-in-rails-3)

```
# config/initializers/carrierwave.rb
CarrierWave.configure do |config|
  config.asset_host = ActionController::Base.asset_host
end
```

***

[validate-email-in-ruby-on-rails](http://stackoverflow.com/questions/13784845/validate-email-in-ruby-on-rails)

```
 validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
```
***

如何把一个字符串转化为某个类的名字

```
# with rails
"A::A#{1}".constantize

# without rails:
Module.const_get "A::A#{1}"
```

```
# localStorage
  if localStorage
    index = parseInt(localStorage["tab:#{location.pathname}"] || '0')
    switchTab $('.tab-link').eq(index)

  $(".tab-link").click ->
    if localStorage
      localStorage["tab:#{location.pathname}"] = $(@).closest('li').index()
    switchTab $(@)
```

***

[access-helpers-from-mailer](http://stackoverflow.com/questions/4937208/access-helpers-from-mailer)

 ```
 # ActiveRecord::ConnectionTimeoutError happening sporadically
 
 http://stackoverflow.com/questions/12045495/activerecordconnectiontimeouterror-happening-sporadically
 
 ActiveRecord::Base.clear_active_connections!
 ```
 
 ```
  在 controller中使用 helper
  view_context.timeago_tag(@message.created_at, lang: I18n.locale) 
 ```
 
 ***
[polymorphic_url](http://api.rubyonrails.org/classes/ActionDispatch/Routing/PolymorphicRoutes.html)
 

***

```gem uninstall rake -v 10.3.1```

***

[Inflector](http://api.rubyonrails.org/classes/ActiveSupport/Inflector.html)

`camelize, classify, constantize`

***

Rails Console 

```
>>app.get '/'
=> 200
>>app.get '/orders'
=> 302
```

```
Article.first
article = _
# "_"保存着上一条命令返回的结果
```

***

```
begin
  eval string
rescue SyntaxError, NameError => boom
  print "String doesn't compile: " + boom
rescue StandardError => bang
  print "Error running script: " + bang
end
```

rescue  nil

***

[update_counters](http://apidock.com/rails/ActiveRecord/Locking/Optimistic/ClassMethods/update_counters)

***

RAILS_ENV=production bundle exec rake assets:cleanup 不存在

rake assets:clobber  #RAILS_ENV=production 