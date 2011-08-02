class Api::V1::DownloadsController < Api::BaseController

  def index
    render :json => {
      "total" => Download.count
    }
  end

  def show
    full_name = params[:id].chomp(".json")
    if rubygem_name = Version.rubygem_name_for(full_name)
      render :json => {
        "total_downloads"   => Download.for_rubygem(rubygem_name),
        "version_downloads" => Download.for_version(full_name)
      }
    else
      render :text => "This package could not be found.", :status => :not_found
    end
  end

end
