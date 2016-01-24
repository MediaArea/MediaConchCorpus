require File.expand_path(File.dirname(__FILE__) + '/../config/environment')
require 'csv'
require 'active_support'
require 'active_support/core_ext'

# warning, this is not at all efficient!
# also obviously file path must change
csv_text = File.read('/Users/ashleyblewer/Downloads/final_ingest.csv')
csv = CSV.parse(csv_text, :headers => true, skip_blanks: true).delete_if { |row| row.to_hash.values.all?(&:blank?) }
csv.each do |row|
  Video.create!(row.to_hash)
end

# row...
# DocType,DocTypeVersion,DocTypeReadVersion,Duration,MuxingApp,WritingApp,DateUTC,CRC32_Count,Void_Count,
# SeekHead_Count,Info_Count,Cluster_Count,Tracks_Count,Cues_Count,Attachments_Count,Chapters_Count,
# Tags_Count,CodecID_Video,CodecID_Audio,Format,FileSize,OverallBitRate,URL,EBML-ELEM-START,EBML-VER-COH,
# EBML-DOCVER-COH,EBML-ELEMENT-VALID-PARENT,EBML-ELEMENT-NONMULTIPLES,EBML-ELEMENT-CONTAINS-MANDATES,
# EBML-VALID-MAXID,EBML-VALID-MAXSIZE,ELEMENTS-WITHIN-MAXIDLENGTH,ELEMENTS-WITHIN-MAXSIZELENGTH,
# EBML-CRC-FIRST,EBML-CRC-VALID,EBML-CRC-LENGTH,MKV-SEGMENT-UID-LEGNTH,MKV-VALID-TRACKTYPE-VALUE,
# MKV-VALID-BOOLEANS,MKV-SEEK-RESOLVE