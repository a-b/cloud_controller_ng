require File.expand_path('../helpers/change_primary_key', __dir__)

Sequel.migration do
  up do
    add_primary_key_to_table(:organizations_users, :organizations_users_pk)
  end

  down do
    remove_primary_key_from_table(:organizations_users,
                                  :organizations_users_pkey,
                                  :organizations_users_pk)
  end
end
