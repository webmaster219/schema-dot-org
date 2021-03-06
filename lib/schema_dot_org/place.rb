# frozen_string_literal: true

require 'schema_dot_org'


module SchemaDotOrg
  # Model the Schema.org `Thing > Place`.  See http://schema.org/Place
  class Place < SchemaType
    attr_accessor :address
    attr_accessor :name
    validates :address, :name, type: String, presence: true

    def _to_json_struct
      {
        'address' => self.address,
        'name' => name
      }
    end
  end
end
