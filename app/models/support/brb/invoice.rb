require_dependency 'support/application_record'

module Support
  module Brb
    class Invoice < ApplicationRecord # :nodoc:
      self.table_name = 'extranet.brb_invoices'
      audited
      
      belongs_to :category,  required: false, class_name: 'Support::Brb::Category'
      belongs_to :situation, required: false, class_name: 'Support::Brb::InvoiceSituation'
      belongs_to :state,     required: false, class_name: 'Support::Common::State'

      scope :paids, -> { where(status: 1) }

      after_create :generate_invoice!,        if: -> { category.invoice_type_id == 2 }
      after_create :generate_simple_invoice!, if: -> { category.invoice_type_id == 1 }

      scope :by_name,       ->(name) { where('name ilike ?' "%#{name}%") }
      scope :by_cpf,        ->(cpf) { where(cpf: cpf.gsub('.','').gsub('-','')) }
      scope :by_id,         ->(id) { where(id: id) }
      scope :by_type,       ->(type) { where(invoice_type_id: type) }
      scope :by_situaiton,  ->(situation) { where(situation_id: situation) }
      scope :by_category,   ->(category) { where(category_id: category) }
      scope :by_date_start, ->(date_start) { where('brb_invoices.created_at::date >= ?', Date.parse(date_start))}
      scope :by_date_end,   ->(date_end) { where('brb_invoices.created_at::date <= ?', Date.parse(date_end))}

      def presenter
        call_presenter('Support::Brb::InvoicePresenter', self)
      end

      private

      def generate_simple_invoice!
        barcode = Support::Brb::CreatingSimpleBarcodeService.new(
          due: due.strftime('%d/%m/%Y'),
          value: value.present? ? value : category.default_value,
          sequential: id
        )

        self.update(
          barcode: barcode.barcode_without_format,
          value: self.value,
          number_our: barcode.sequential,
          number_document: barcode.sequential,
          situation_id: 1
        )
      end

      def generate_invoice!
        barcode = Support::Brb::CreatingBarcodeService.new(
          due: due.strftime('%d/%m/%Y'),
          value: (category.default_value.to_i == 0) ? value : category.default_value,
          sequential: id,
          bank_wallet: 1,
          bank_agency: 208,
          #bank_account: '0149304'
          bank_account: '0294797'
         )
=begin
     @bank_wallet  = options[:bank_wallet]     ||= '1'
     @sequential   = options[:sequential]      ||= '1'
     @bank         = options[:bank]            ||= '070'
     @bank_agency  = options[:bank_agency]     ||= '058'
     @bank_account = options[:bank_account]    ||= '6002006'
     @due          = options[:due]             ||= '0'
     @coin         = options[:coin]            ||= '9'
     @value        = options[:value]           ||= 100
=end
        self.update(
          barcode: barcode.barcode_with_digit,
          value: (category.default_value.to_i == 0) ? value.to_f : category.default_value,
          number_our: barcode.our_number_with_digits,
          number_document: barcode.sequential,
          situation_id: 1
        )
      end
    end
  end
end
