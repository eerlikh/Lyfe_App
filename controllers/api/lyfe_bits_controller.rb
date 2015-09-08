class LyfeBitsController < ApiController

  def bitParams
    @bit_params = @bit_params || JSON.parse(request.body.read.to_s)
  end

  get '/' do
    content_type :json
    LyfeBit.all.to_json
  end

  post '/' do
    content_type :json
    bit = LyfeBit.create( params[:lyfe_bit] || bitParams)
  end

  delete '/:id' do
    content_type :json
    Chirp.destory(params[:id])
    halt 202
  end

end
