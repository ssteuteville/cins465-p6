# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

Comment.create!([
  { :doi_id => 1, :user_id => 1, :comment => "\r\nThis is weird.", :created_at => "2013-10-29 22:52:51", :updated_at => "2013-10-29 22:52:51" }
])



Doi.create!([
  { :name => "123", :description => "1", :created_at => "2013-10-29 22:48:50", :updated_at => "2013-10-29 22:48:50", :user_id => 1 },
  { :name => "wdad", :description => "q3we", :created_at => "2013-10-29 23:56:35", :updated_at => "2013-10-29 23:56:35", :user_id => 1 },
  { :name => "qe12", :description => "123", :created_at => "2013-10-29 23:56:44", :updated_at => "2013-10-29 23:56:44", :user_id => 1 }
])



Update.create!([
  { :doi_id => 1, :url => "https://1.com", :description => "1", :created_at => "2013-10-29 22:48:50", :updated_at => "2013-10-29 22:48:50" },
  { :doi_id => 2, :url => "https://32e.com", :description => "q3we", :created_at => "2013-10-29 23:56:35", :updated_at => "2013-10-29 23:56:35" },
  { :doi_id => 3, :url => "https://g.com", :description => "123", :created_at => "2013-10-29 23:56:44", :updated_at => "2013-10-29 23:56:44" }
])



User.create!([
  { :email => "ssteuteville@gmail.com", :password => "#12Fuck34", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 12, :current_sign_in_at => "2013-10-30 02:33:16", :last_sign_in_at => "2013-10-30 01:15:44", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-10-29 22:28:20", :updated_at => "2013-10-30 02:33:16" }
])


