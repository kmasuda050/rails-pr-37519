```
$ bundle install
$ bundle exec ruby migrate.rb
$ bundle exec ruby sample.rb
D, [2020-01-29T07:55:57.890057 #8636] DEBUG -- :    (0.4ms)  SET NAMES utf8mb4,  @@SESSION.sql_mode = CONCAT(CONCAT(@@sql_mode, ',STRICT_ALL_TABLES'), ',NO_AUTO_VALUE_ON_ZERO'),  @@SESSION.sql_auto_is_null = 0, @@SESSION.wait_timeout = 2147483
D, [2020-01-29T07:55:57.897831 #8636] DEBUG -- :    (0.3ms)  BEGIN
D, [2020-01-29T07:55:57.898269 #8636] DEBUG -- :   User Create (0.3ms)  INSERT INTO `users` VALUES ()
D, [2020-01-29T07:55:57.913231 #8636] DEBUG -- :    (13.9ms)  COMMIT
Traceback (most recent call last):
        9: from sample.rb:16:in `<main>'
        8: from /home/kmasuda/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-6.0.2.1/lib/active_record/persistence.rb:124:in `insert_all'
        7: from /home/kmasuda/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-6.0.2.1/lib/active_record/insert_all.rb:27:in `execute'
        6: from /home/kmasuda/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-6.0.2.1/lib/active_record/insert_all.rb:94:in `to_sql'
        5: from /home/kmasuda/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-6.0.2.1/lib/active_record/connection_adapters/abstract_mysql_adapter.rb:513:in `build_insert_sql'
        4: from /home/kmasuda/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-6.0.2.1/lib/active_record/insert_all.rb:133:in `values_list'
        3: from /home/kmasuda/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-6.0.2.1/lib/arel/nodes/node.rb:38:in `to_sql'
        2: from /home/kmasuda/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-6.0.2.1/lib/active_record/connection_handling.rb:206:in `connection'
        1: from /home/kmasuda/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-6.0.2.1/lib/active_record/connection_handling.rb:238:in `retrieve_connection'
/home/kmasuda/.rbenv/versions/2.6.3/lib/ruby/gems/2.6.0/gems/activerecord-6.0.2.1/lib/active_record/connection_adapters/abstract/connection_pool.rb:1117:in `retrieve_connection': No connection pool with 'primary' found. (ActiveRecord::ConnectionNotEstablished)
```
