# -*- encoding: utf-8 -*-
# This file generated automatically using vocab-fetch from http://www.w3.org/ns/hydra/core#
require 'rdf'
module RDF::Vocab
  class HYDRA < RDF::StrictVocabulary("http://www.w3.org/ns/hydra/core#")

    # Class definitions
    term :ApiDocumentation,
      comment: %(The Hydra API documentation class).freeze,
      label: "ApiDocumentation".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Resource".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :Class,
      comment: %(The class of Hydra classes. Hydra classes and their instances are dereferenceable resources.).freeze,
      label: "Hydra Class".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: ["hydra:Resource".freeze, "rdfs:Class".freeze],
      type: ["hydra:Resource".freeze, "rdfs:Class".freeze],
      "vs:term_status" => %(testing).freeze
    term :Collection,
      comment: %(A collection holding references to a number of related resources.).freeze,
      label: "Collection".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Resource".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :CreateResourceOperation,
      comment: %(A CreateResourceOperation is a HTTP operation which expects an input of the type specified by hydra:expects and creates a resource of the type specified by hydra:returns.).freeze,
      label: "CreateResourceOperation".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Operation".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :DeleteResourceOperation,
      comment: %(A DeleteResourceOperation is a HTTP operation that deletes a resource.).freeze,
      label: "DeleteResourceOperation".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Operation".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :Error,
      comment: %(A runtime error, used to report information beyond the returned status code.).freeze,
      label: "Error".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:StatusCodeDescription".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :IriTemplate,
      comment: %(The class of IRI templates.).freeze,
      label: "IRI Template".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Resource".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :IriTemplateMapping,
      comment: %(A mapping from an IRI template variable to a property.).freeze,
      label: "IriTemplateMapping".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Resource".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :Link,
      comment: %(The class of properties representing links.).freeze,
      label: "Link".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: ["hydra:Resource".freeze, "rdf:Property".freeze],
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :Operation,
      comment: %(An operation.).freeze,
      label: "Operation".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Resource".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :PagedCollection,
      comment: %(A PagedCollection is a subclass of Collection with the only difference that its members are sorted and only a subset of all members are returned in a single PagedCollection. To get the other members, the nextPage/previousPage properties have to be used.).freeze,
      label: "PagedCollection".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Collection".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :ReplaceResourceOperation,
      comment: %(A ReplaceResourceOperation is a HTTP operation which overwrites a resource. It expects data of the type specified in hydra:expects and results in a resource of the type specified by hydra:returns.).freeze,
      label: "ReplaceResourceOperation".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Operation".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :Resource,
      comment: %(The class of dereferenceable resources.).freeze,
      label: "Hydra Resource".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "rdfs:Resource".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :StatusCodeDescription,
      comment: %(Additional information about a status code that might be returned.).freeze,
      label: "Status code description".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Resource".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :SupportedProperty,
      comment: %(A property known to be supported by a Hydra class.).freeze,
      label: "Supported Property".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: "hydra:Resource".freeze,
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze
    term :TemplatedLink,
      comment: %(A templated link.).freeze,
      label: "Templated Link".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subClassOf: ["hydra:Resource".freeze, "rdf:Property".freeze],
      type: "hydra:Class".freeze,
      "vs:term_status" => %(testing).freeze

    # Property definitions
    property :description,
      comment: %(A description.).freeze,
      label: "description".freeze,
      range: "xsd:string".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subPropertyOf: "rdfs:comment".freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :freetextQuery,
      comment: %(A property representing a freetext query.).freeze,
      label: "freetext query".freeze,
      range: "xsd:string".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :itemsPerPage,
      comment: %(The maximum number of items referenced by each single PagedCollection in a set of interlinked PagedCollections.).freeze,
      domain: "hydra:PagedCollection".freeze,
      label: "items per page".freeze,
      range: "xsd:integer".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :mapping,
      comment: %(A variable-to-property mapping of the IRI template.).freeze,
      domain: "hydra:IriTemplate".freeze,
      label: "mapping".freeze,
      range: "hydra:IriTemplateMapping".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :method,
      comment: %(The HTTP method.).freeze,
      domain: "hydra:Operation".freeze,
      label: "method".freeze,
      range: "xsd:string".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :property,
      comment: %(A property).freeze,
      label: "property".freeze,
      range: "rdf:Property".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :readonly,
      comment: %(True if the property is read-only, false otherwise.).freeze,
      domain: "hydra:SupportedProperty".freeze,
      label: "ready-only".freeze,
      range: "xsd:boolean".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :required,
      comment: %(True if the property is required, false otherwise.).freeze,
      label: "required".freeze,
      range: "xsd:boolean".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :statusCode,
      comment: %(The HTTP status code).freeze,
      domain: "hydra:StatusCodeDescription".freeze,
      label: "status code".freeze,
      range: "xsd:integer".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :template,
      comment: %(An IRI template as defined by RFC6570.).freeze,
      domain: "hydra:IriTemplate".freeze,
      label: "template".freeze,
      range: "xsd:string".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      "rdfs:seeAlso" => %(http://tools.ietf.org/html/rfc6570).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :title,
      comment: %(A title, often used along with a description.).freeze,
      label: "title".freeze,
      range: "xsd:string".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      subPropertyOf: "rdfs:label".freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :totalItems,
      comment: %(The total number of items referenced by a collection or a set of interlinked PagedCollections.).freeze,
      domain: "hydra:Collection".freeze,
      label: "total items".freeze,
      range: "xsd:integer".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :variable,
      comment: %(An IRI template variable).freeze,
      domain: "hydra:IriTemplateMapping".freeze,
      label: "variable".freeze,
      range: "xsd:string".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze
    property :writeonly,
      comment: %(True if the property is write-only, false otherwise.).freeze,
      domain: "hydra:SupportedProperty".freeze,
      label: "write-only".freeze,
      range: "xsd:boolean".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "rdf:Property".freeze,
      "vs:term_status" => %(testing).freeze

    # Extra definitions
    term :apiDocumentation,
      comment: %(A link to the API documentation).freeze,
      label: "apiDocumentation".freeze,
      range: "hydra:ApiDocumentation".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :entrypoint,
      comment: %(A link to main entry point of the Web API).freeze,
      domain: "hydra:ApiDocumentation".freeze,
      label: "entrypoint".freeze,
      range: "hydra:Resource".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :expects,
      comment: %(The information expected by the Web API.).freeze,
      domain: "hydra:Operation".freeze,
      label: "expects".freeze,
      range: "hydra:Class".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :firstPage,
      comment: %(The first page of an interlinked set of PagedCollections).freeze,
      domain: "hydra:PagedCollection".freeze,
      label: "first page".freeze,
      range: "hydra:PagedCollection".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :lastPage,
      comment: %(The last page of an interlinked set of PagedCollections).freeze,
      domain: "hydra:PagedCollection".freeze,
      label: "last page".freeze,
      range: "hydra:PagedCollection".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :member,
      comment: %(A member of the collection).freeze,
      domain: "hydra:Collection".freeze,
      label: "member".freeze,
      range: "hydra:Resource".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :nextPage,
      comment: %(The page following the current instance in an interlinked set of PagedCollections).freeze,
      domain: "hydra:PagedCollection".freeze,
      label: "next page".freeze,
      range: "hydra:PagedCollection".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :operation,
      comment: %(An operation supported by the Hydra resource).freeze,
      domain: "hydra:Resource".freeze,
      label: "operation".freeze,
      range: "hydra:Operation".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :previousPage,
      comment: %(The page preceding the current instance in an interlinked set of PagedCollections).freeze,
      domain: "hydra:PagedCollection".freeze,
      label: "previous page".freeze,
      range: "hydra:PagedCollection".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :returns,
      comment: %(The information returned by the Web API on success).freeze,
      domain: "hydra:Operation".freeze,
      label: "returns".freeze,
      range: "hydra:Class".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :search,
      comment: %(A IRI template that can be used to query a collection).freeze,
      label: "search".freeze,
      range: "hydra:IriTemplate".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:TemplatedLink".freeze,
      "vs:term_status" => %(testing).freeze
    term :statusCodes,
      comment: %(Additional information about status codes that might be returned by the Web API).freeze,
      label: "status codes".freeze,
      range: "hydra:StatusCodeDescription".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :supportedClass,
      comment: %(A class known to be supported by the Web API).freeze,
      domain: "hydra:ApiDocumentation".freeze,
      label: "supported classes".freeze,
      range: "hydra:Class".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :supportedOperation,
      comment: %(An operation supported by instances of the specific Hydra class or the target of the Hydra link).freeze,
      label: "supported operation".freeze,
      range: "hydra:Operation".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
    term :supportedProperty,
      comment: %(The properties known to be supported by a Hydra class).freeze,
      domain: "hydra:Class".freeze,
      label: "supported properties".freeze,
      range: "hydra:SupportedProperty".freeze,
      "rdfs:isDefinedBy" => %(http://www.w3.org/ns/hydra/core).freeze,
      type: "hydra:Link".freeze,
      "vs:term_status" => %(testing).freeze
  end
end
