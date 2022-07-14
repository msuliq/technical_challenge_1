module CurrentFlat
    extend ActiveSupport::Concern
    private
        def set_flat
        @flat = Flat.find(params[:flat_id])
        rescue ActiveRecord::RecordNotFound
        @flat = Flat.create
        params[:flat_id] = @flat.id 
        end
    end