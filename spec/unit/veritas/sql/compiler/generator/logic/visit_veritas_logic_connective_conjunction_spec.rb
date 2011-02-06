require 'spec_helper'

describe Generator::Logic, '#visit_veritas_logic_connective_conjunction' do
  subject { object.visit_veritas_logic_connective_conjunction(conjunction) }

  let(:described_class) { Class.new(Visitor) { include Generator::Logic } }
  let(:attribute)       { Attribute::Integer.new(:id)                     }
  let(:conjunction)     { attribute.eq(1).and(attribute.ne(2))            }
  let(:object)          { described_class.new                             }

  it_should_behave_like 'a generated SQL expression'

  its(:to_s) { should eql('("id" = 1 AND "id" <> 2)') }
end
