# encoding: utf-8

require 'spec_helper'

describe SQL::Generator::Function::Aggregate, '#visit_axiom_aggregate_mean' do
  subject { object.visit_axiom_aggregate_mean(mean) }

  let(:described_class) { Class.new(SQL::Generator::Visitor) { include SQL::Generator::Function::Aggregate } }
  let(:attribute)       { Attribute::Integer.new(:id)                                                        }
  let(:mean)            { attribute.mean                                                                     }
  let(:object)          { described_class.new                                                                }

  it_should_behave_like 'a generated SQL expression'

  its(:to_s) { should eql('AVG ("id")') }
end
