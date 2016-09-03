class PaymentDecorator < BaseDecorator
  def payment_full
    "#{payment.year} #{I18n.t('date.month_names')[payment.month.to_i]} - #{payment.paid_at}"
  end
  def payment_describe
    "#{payment.year} #{I18n.t('date.month_names')[payment.month.to_i]}"
  end
end
