User.create(name: "admin", password: "admin", password_confirmation: "admin")

%w{ aws_access_key_id aws_secret_access_key dynamodb_log_table ec2_instance_age opsworks_stack_age opsworks_layer_age opsworks_instance_age opsworks_app_age cloudformation_stack_age }.each do |setting|
  Setting.create(key: setting, value: "", protected: "key")
end
