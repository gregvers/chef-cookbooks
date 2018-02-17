#
# Cookbook:: mydb
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "sc-mongodb::default"

execute 'initialize DB' do
  command 'mongo --eval "db.myapp.insert({"hit" : 0})"'
end


# db.myapp.find()
# db.myapp.update({'hit':0},{$set:{'hit':1}})

