class TenantsController < ApplicationController
  before_action :set_tenant, only: :destroy

  def create(user_id, flat_id)
    user = User.find(params[:user_id])
    @tenant = @flat.add_tenant(user.id)
    
    respond_to do |format|
      if @tenant.save
        format.html { redirect_to @tenant.flat, notice: "Tenant was successfully added." }
        format.json { render :show, status: :created, location: @tenant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tenant.destroy
    respond_to do |format|
      format.html { redirect_to tenants_url, notice: "Tenant vacated the flat." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenant
      @tenant = Tenant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tenant_params
      params.require(:tenant).permit(:user_id, :flat_id)
    end
end
