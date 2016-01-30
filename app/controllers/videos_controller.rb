class VideosController < ApplicationController  

  def index
    facet_arr = [:DocType, :Duration, :DocTypeVersion, :DocTypeReadVersion, :CRC32_Count, :Void_Count, :SeekHead_Count, :Info_Count,
      :Cluster_Count, :Tracks_Count, :Cues_Count, :Attachments_Count, :Chapters_Count, :Tags_Count, :MuxingApp, :WritingApp, :DateUTC,
      :CodecID_Video, :CodecID_Audio, :Format, :FileSize, :OverallBitRate, :URL, :EBML_ELEM_START, :EBML_VER_COH, 
      :EBML_DOCVER_COH, :EBML_ELEMENT_VALID_PARENT, :EBML_ELEMENT_NONMULTIPLES, :EBML_ELEMENT_CONTAINS_MANDATES, 
      :EBML_VALID_MAXID, :EBML_VALID_MAXSIZE, :ELEMENTS_WITHIN_MAXIDLENGTH, :ELEMENTS_WITHIN_MAXSIZELENGTH, 
      :EBML_CRC_FIRST, :EBML_CRC_VALID, :EBML_CRC_LENGTH, :MKV_SEGMENT_UID_LENGTH, :MKV_VALID_TRACKTYPE_VALUE, 
      :MKV_VALID_BOOLEANS, :MKV_SEEK_RESOLVE]
    @search = Video.search do

      fulltext params[:search]
      with( params[:category] ).equal_to( params[:search] ) if params[:category].present?

      facet :DocType, :Duration, :DocTypeVersion, :DocTypeReadVersion, :CRC32_Count, :Void_Count, :SeekHead_Count, :Info_Count,
      :Cluster_Count, :Tracks_Count, :Cues_Count, :Attachments_Count, :Chapters_Count, :Tags_Count, :MuxingApp, :WritingApp, :DateUTC,
      :CodecID_Video, :CodecID_Audio, :Format, :FileSize, :OverallBitRate, :URL, :EBML_ELEM_START, :EBML_VER_COH, 
      :EBML_DOCVER_COH, :EBML_ELEMENT_VALID_PARENT, :EBML_ELEMENT_NONMULTIPLES, :EBML_ELEMENT_CONTAINS_MANDATES, 
      :EBML_VALID_MAXID, :EBML_VALID_MAXSIZE, :ELEMENTS_WITHIN_MAXIDLENGTH, :ELEMENTS_WITHIN_MAXSIZELENGTH, 
      :EBML_CRC_FIRST, :EBML_CRC_VALID, :EBML_CRC_LENGTH, :MKV_SEGMENT_UID_LENGTH, :MKV_VALID_TRACKTYPE_VALUE, 
      :MKV_VALID_BOOLEANS, :MKV_SEEK_RESOLVE, :limit => 10

      facet_arr.each do |str|
        with(str, params[str]) if params[str].present?
      end

      paginate :per_page => 40
    end
    @videos = @search.results
  end

  def show
    @video = Video.find(params[:id])
    @gif_url = @video.URL.gsub(/.mkv|.webm/,'.gif')
    @embed_url = @video.URL.gsub(/\/download\//,'/embed/').gsub(/([^\/]+$)/,'')
  end

  def create
    Video.create(video_params)
  end
  
  private

  def video_params
    params.require(:video).permit(facet_arr.each{|str| str})
  end

end
