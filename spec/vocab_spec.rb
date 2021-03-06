require File.expand_path("../spec_helper", __FILE__)
require 'rdf/reasoner'

describe RDF::Vocab do
  describe ".each" do
    it "enumerates pre-defined vocabularies" do
      expect {|b| RDF::Vocabulary.each(&b)}.to yield_control.at_least(RDF::Vocab::VOCABS.keys.length).times
    end
  end

  context "pre-defined vocabularies" do
    RDF::Vocab::VOCABS.each do |id, params|
      class_name = params.fetch(:class_name, id.to_s.upcase).to_sym
      context id do
        it "defines RDF::Vocab::#{class_name}" do
          expect { RDF::Vocab.const_get(class_name) }.not_to raise_error
        end

        it "#{class_name} is included in RDF::Vocabulary.each" do
          expect(RDF::Vocabulary.each.to_a).to include(RDF::Vocab.const_get(class_name))
        end

        it "represents #{params[:uri]}" do
          expect(RDF::Vocab.const_get(class_name).to_s).to eql params[:uri]
        end

        it "has at least one term", unless: id == :xhtml do
          expect(RDF::Vocab.const_get(class_name).each.to_a).not_to be_empty
        end
      end
    end
  end

  context "entailments" do
    before(:all) {
      RDF::Reasoner.apply(:rdfs, :owl)
    }
    RDF::Vocabulary.each do |vocab|
      vocab.each do |term|
        if term.type.to_s =~ /Class/
          context term.pname do
            it "subClassOf" do
              expect {term.subClassOf.map(&:pname)}.not_to raise_error
            end
            it "equivalentClass" do
              expect {term.equivalentClass.map(&:pname)}.not_to raise_error
            end
          end
        elsif term.type.to_s =~ /Property/
          context term.pname do
            it "subPropertyOf" do
              expect {term.subPropertyOf.map(&:pname)}.not_to raise_error
            end
            it "domain" do
              expect {term.domain.map(&:pname)}.not_to raise_error
            end
            it "range" do
              expect {term.range.map(&:pname)}.not_to raise_error
            end
            it "equivalentProperty" do
              expect {term.equivalentProperty.map(&:pname)}.not_to raise_error
            end
          end
        end
      end
    end
  end
end
