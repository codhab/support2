class EnablePgcryptoExtension < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    enable_extension 'uuid-ossp'
  end
end
