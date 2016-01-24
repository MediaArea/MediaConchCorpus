# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160129033058) do

  create_table "videos", force: :cascade do |t|
    t.string   "DocType"
    t.string   "DocTypeVersion"
    t.string   "DocTypeReadVersion"
    t.string   "Duration"
    t.string   "MuxingApp"
    t.string   "WritingApp"
    t.string   "DateUTC"
    t.string   "CRC32_Count"
    t.string   "Void_Count"
    t.string   "SeekHead_Count"
    t.string   "Info_Count"
    t.string   "Cluster_Count"
    t.string   "Tracks_Count"
    t.string   "Cues_Count"
    t.string   "Attachments_Count"
    t.string   "Chapters_Count"
    t.string   "Tags_Count"
    t.string   "CodecID_Video"
    t.string   "CodecID_Audio"
    t.string   "Format"
    t.string   "FileSize"
    t.string   "OverallBitRate"
    t.string   "URL"
    t.string   "EBML_ELEM_START"
    t.string   "EBML_VER_COH"
    t.string   "EBML_DOCVER_COH"
    t.string   "EBML_ELEMENT_VALID_PARENT"
    t.string   "EBML_ELEMENT_NONMULTIPLES"
    t.string   "EBML_ELEMENT_CONTAINS_MANDATES"
    t.string   "EBML_VALID_MAXID"
    t.string   "EBML_VALID_MAXSIZE"
    t.string   "ELEMENTS_WITHIN_MAXIDLENGTH"
    t.string   "ELEMENTS_WITHIN_MAXSIZELENGTH"
    t.string   "EBML_CRC_FIRST"
    t.string   "EBML_CRC_VALID"
    t.string   "EBML_CRC_LENGTH"
    t.string   "MKV_SEGMENT_UID_LENGTH"
    t.string   "MKV_VALID_TRACKTYPE_VALUE"
    t.string   "MKV_VALID_BOOLEANS"
    t.string   "MKV_SEEK_RESOLVE"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

end
