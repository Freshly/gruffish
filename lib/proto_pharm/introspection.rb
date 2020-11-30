# frozen_string_literal: true

require "short_circu_it"
require_relative "introspection/rpc_inspector"
require_relative "introspection/service_resolver"

module ProtoPharm
  module Introspection
    extend ActiveSupport::Concern

    included do
      include ShortCircuIt

      memoize :resolve_service,
              :inspect_rpc
    end

    private

    def resolve_service(service)
      Introspection::ServiceResolver.resolve(service)
    end

    def inspect_rpc(service, endpoint)
      Introspection::RpcInspector.new(service, endpoint)
    end
  end
end
