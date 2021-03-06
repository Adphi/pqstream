# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: pqstream.proto

require 'google/protobuf'

require 'google/protobuf/well_known_types'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "pqs.ListenRequest" do
    optional :table_regexp, :string, 1
  end
  add_message "pqs.RawEvent" do
    optional :schema, :string, 1
    optional :table, :string, 2
    optional :op, :enum, 3, "pqs.Operation"
    optional :id, :string, 4
    optional :payload, :message, 5, "google.protobuf.Struct"
    optional :previous, :message, 6, "google.protobuf.Struct"
  end
  add_message "pqs.Event" do
    optional :schema, :string, 1
    optional :table, :string, 2
    optional :op, :enum, 3, "pqs.Operation"
    optional :id, :string, 4
    optional :payload, :message, 5, "google.protobuf.Struct"
    optional :changes, :message, 6, "google.protobuf.Struct"
  end
  add_enum "pqs.Operation" do
    value :UNKNOWN, 0
    value :INSERT, 1
    value :UPDATE, 2
    value :DELETE, 3
    value :TRUNCATE, 4
  end
end

module Pqs
  ListenRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("pqs.ListenRequest").msgclass
  RawEvent = Google::Protobuf::DescriptorPool.generated_pool.lookup("pqs.RawEvent").msgclass
  Event = Google::Protobuf::DescriptorPool.generated_pool.lookup("pqs.Event").msgclass
  Operation = Google::Protobuf::DescriptorPool.generated_pool.lookup("pqs.Operation").enummodule
end
