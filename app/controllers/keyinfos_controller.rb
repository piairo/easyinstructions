class KeyinfosController < ApplicationController

  def show
    @flat = Flat.find(1)
    keyinfos = Keyinfo.where(flat_id: 1)
    selectkeyinfo = keyinfos.where(flat_id: params[:flat_id])
    @keyinfo = selectkeyinfo[0]
  end


end


private

def keyinfos_params
    params.require(:keyinfo).permit(:checkout, :wifiname, :wificode, :owner, :contact, :flat_id)
  end
