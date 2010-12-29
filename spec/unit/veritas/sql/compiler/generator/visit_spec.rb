require 'spec_helper'

describe Generator, '#visit' do
  subject { object.visit(visitable) }

  let(:klass)  { Generator }
  let(:object) { klass.new }

  context 'with a handled object' do
    let(:header)    { [ [ :id, Integer ] ]                    }
    let(:body)      { [ [ 1 ] ].each                          }
    let(:visitable) { BaseRelation.new('users', header, body) }

    it_should_behave_like 'a command method'
  end

  context 'with an unhandled object' do
    let(:visitable) { mock('Not Handled') }

    specify { expect { subject }.to raise_error(Generator::UnknownObject, "No handler for #{visitable.class}") }
  end
end
