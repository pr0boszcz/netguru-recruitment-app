class PaymentsController < ApplicationController
  expose(:students) { Student.all }
  expose(:payment, attributes: :payment_params)

  def create
    if payment.save
      redirect_to payments_path, notice: I18n.t('shared.created', resource: 'Payment')
    else
      render :new
    end
  end

  def destroy
    payment.destroy
    redirect_to payments_path, notice: I18n.t('shared.deleted', resource: 'Payment')
  end

  private
  def payment_params
    params.require(:payment).permit(:month, :year, :paid_at, :student_id)
  end
end
