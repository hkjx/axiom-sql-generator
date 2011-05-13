# encoding: utf-8

require 'spec_helper'

describe SQL::Generator::Function, '#visit_veritas_function_connective_negation' do
  subject { object.visit_veritas_function_connective_negation(negation) }

  let(:described_class) { Class.new(SQL::Generator::Visitor) { include SQL::Generator::Function } }
  let(:attribute)       { Attribute::Integer.new(:id)                                             }
  let(:negation)        { Function::Connective::Negation.new(attribute.eq(1))                     }
  let(:object)          { described_class.new                                                     }

  it_should_behave_like 'a generated SQL expression'

  its(:to_s) { should eql('NOT "id" = 1') }
end