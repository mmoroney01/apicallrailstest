
require 'net/http'
require 'json'

class IndexController < ApplicationController
  def home
  end

  def apicall
    url = 'https://atadalequerycensusdb.azurewebsites.net/api/CountyByIndex?code=S4nNJaAGmgmXamB5/fBsMFzzJqUkLcUau/afBLonXIEBM08TGpisSA==&index=' + params[:search]
    uri = URI(url)
    response = Net::HTTP.get(uri)
    @results = JSON.parse(response)
    
    respond_to do |format|
      format.html { render 'apicall' }
      format.js { render 'apicall' }
    end
  end
end
