class Api::V1::ApisamplesController < ApplicationController
	  def index
		      apisamples = Apisample.order(created_at: :desc)
		          render json: { status: 'SUCCESS', message: 'Loaded apisamples', data: apisamples }
			    end

	    def show
		        apisample = Apisample.find(params[:id])
			    render json: { status: 'SUCCESS', message: 'Loaded the apisample', data: apisample }
			      end

	      def create
		          apisample = Apisample.new(apisample_params)
			      if apisample.save
				            render json: { status: 'SUCCESS', data: apisample }
					        else
							      render json: { status: 'ERROR', data: apisample.errors }
							          end
			        end

	        def destroy
			    apisample = Apisample.find(params[:id])
			        apisample.destroy
				    render json: { status: 'SUCCESS', message: 'Deleted the apisample', data: apisample }
				      end

		  def update
			      apisample = Apisample.find(params[:id])
			          if apisample.update(apisample_params)
					        render json: { status: 'SUCCESS', message: 'Updated the apisample', data: apisample }
						    else
							          render json: { status: 'SUCCESS', message: 'Not updated', data: apisample }
								      end
				    end

		    private

		      def apisample_params
			          params.require(:apisample).permit(:name)
				    end
end
