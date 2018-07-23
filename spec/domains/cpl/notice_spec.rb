require 'rails_helper'

describe 'Notice::NoticeSpec' do
  subject do
    FactoryGirl.build(:notice)
  end

  let(:new_notice) do
    FactoryGirl.build(:new_notice)
  end

  let(:edited_notice) do
    FactoryGirl.build(:edited_notice)
  end

  context 'Validações de registro' do

    describe '#valid?' do
      it 'Validações estão presentes?' do
        new_notice.save
        expect(new_notice.errors.key?(:name)).to be true
        expect(new_notice.errors.key?(:document_number)).to be true
        expect(new_notice.errors.key?(:proposal_date)).to be true
      end
    end

    describe '#save' do
      it 'Criando registro válido' do
        expect(subject.save).to be true
      end

      it 'Negando registro inválido' do
        expect(new_notice.save).not_to be true
      end

      it 'Editando registro válido' do
        expect(edited_notice.save).to be true
      end

      it 'Negando edição de registro inválido' do
        edited_notice.proposal_date = nil
        expect(edited_notice.save).not_to be true
      end
    end
  end
end
