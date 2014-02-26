name 'postgresql'
run_list "recipe[postgresql::setup]"

override_attributes(
  :postgresql => {
    :databag     => "db_conf", # databag from which items are fetched
    :setup_items => ["postgresql"]  # name of item from which
                                           # user/database info is read.
  }
)
