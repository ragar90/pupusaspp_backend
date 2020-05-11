class Api::BaseController < ApplicationController
    protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
    private

        def only_respond_to_json
            head :not_acceptable unless params[:format] == 'json' && request.xhr?
        end
end
