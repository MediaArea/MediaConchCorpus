class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :videos, :MKV_SEGMENT_UID_LEGNTH, :MKV_SEGMENT_UID_LENGTH
  end
end
