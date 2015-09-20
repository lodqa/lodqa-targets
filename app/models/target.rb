class Target < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :dictionary_url, :endpoint_url, :graph_url, :ignore_predicates, :max_hop, :name, :parser_url, :sample_queries, :sortal_predicates
end
