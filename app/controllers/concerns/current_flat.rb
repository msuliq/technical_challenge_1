module CurrentFlat
    extend ActiveSupport::Concern
    private
        def set_flat
        @flat = Flat.find(params[:flat_id])
        rescue ActiveRecord::RecordNotFound
        @flat = flat.create
        @flat.id = params[:flat_id]
        end
    end