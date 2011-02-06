require 'spec_helper'

describe Generator::Direction, '#visit_veritas_relation_operation_order_ascending' do
  subject { object.visit_veritas_relation_operation_order_ascending(direction) }

  let(:described_class) { Class.new(Visitor) { include Generator::Direction } }
  let(:direction)       { Attribute::Integer.new(:id).asc                     }
  let(:object)          { described_class.new                                 }

  it_should_behave_like 'a generated SQL expression'

  its(:to_s) { should eql('"id"') }
end
