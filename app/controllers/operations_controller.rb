class OperationsController < ApplicationController
  def new
    @operation = Operation.new
  end

  def create
    @operation = Operation.build(params[:operation])

    if @operation.valid?
      @operation.calculate!
      render :new, status: :ok
    else
      render :new, status: :unprocessable_entity
    end
  end
end
