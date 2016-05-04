require 'vertx-jdbc/jdbc_client'
require 'vertx-service-discovery/discovery_service'
require 'vertx/vertx'
require 'vertx/util/utils.rb'
# Generated from io.vertx.ext.discovery.types.JDBCDataSource
module VertxServiceDiscovery
  #  @author <a href="http://escoffier.me">Clement Escoffier</a>
  class JDBCDataSource
    # @private
    # @param j_del [::VertxServiceDiscovery::JDBCDataSource] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::VertxServiceDiscovery::JDBCDataSource] the underlying java delegate
    def j_del
      @j_del
    end
    # @overload createRecord(name,location,metadata)
    #   @param [String] name 
    #   @param [Hash{String => Object}] location 
    #   @param [Hash{String => Object}] metadata 
    # @overload createRecord(name,jdbcUrl,metadata)
    #   @param [String] name 
    #   @param [String] jdbcUrl 
    #   @param [Hash{String => Object}] metadata 
    # @return [Hash]
    def self.create_record(param_1=nil,param_2=nil,param_3=nil)
      if param_1.class == String && param_2.class == Hash && param_3.class == Hash && !block_given?
        return Java::IoVertxExtDiscoveryTypes::JDBCDataSource.java_method(:createRecord, [Java::java.lang.String.java_class,Java::IoVertxCoreJson::JsonObject.java_class,Java::IoVertxCoreJson::JsonObject.java_class]).call(param_1,::Vertx::Util::Utils.to_json_object(param_2),::Vertx::Util::Utils.to_json_object(param_3)) != nil ? JSON.parse(Java::IoVertxExtDiscoveryTypes::JDBCDataSource.java_method(:createRecord, [Java::java.lang.String.java_class,Java::IoVertxCoreJson::JsonObject.java_class,Java::IoVertxCoreJson::JsonObject.java_class]).call(param_1,::Vertx::Util::Utils.to_json_object(param_2),::Vertx::Util::Utils.to_json_object(param_3)).toJson.encode) : nil
      elsif param_1.class == String && param_2.class == String && param_3.class == Hash && !block_given?
        return Java::IoVertxExtDiscoveryTypes::JDBCDataSource.java_method(:createRecord, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCoreJson::JsonObject.java_class]).call(param_1,param_2,::Vertx::Util::Utils.to_json_object(param_3)) != nil ? JSON.parse(Java::IoVertxExtDiscoveryTypes::JDBCDataSource.java_method(:createRecord, [Java::java.lang.String.java_class,Java::java.lang.String.java_class,Java::IoVertxCoreJson::JsonObject.java_class]).call(param_1,param_2,::Vertx::Util::Utils.to_json_object(param_3)).toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling create_record(param_1,param_2,param_3)"
    end
    #  Convenient method that looks for a JDBC datasource source and provides the configured {::VertxJdbc::JDBCClient}. The
    #  async result is marked as failed is there are no matching services, or if the lookup fails.
    # @param [::Vertx::Vertx] vertx The vert.x instance
    # @param [::VertxServiceDiscovery::DiscoveryService] discovery The discovery service
    # @param [Hash{String => Object}] filter The filter, optional
    # @yield the result handler
    # @return [void]
    def self.get(vertx=nil,discovery=nil,filter=nil)
      if vertx.class.method_defined?(:j_del) && discovery.class.method_defined?(:j_del) && filter.class == Hash && block_given?
        return Java::IoVertxExtDiscoveryTypes::JDBCDataSource.java_method(:get, [Java::IoVertxCore::Vertx.java_class,Java::IoVertxExtDiscovery::DiscoveryService.java_class,Java::IoVertxCoreJson::JsonObject.java_class,Java::IoVertxCore::Handler.java_class]).call(vertx.j_del,discovery.j_del,::Vertx::Util::Utils.to_json_object(filter),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::VertxJdbc::JDBCClient) : nil) }))
      end
      raise ArgumentError, "Invalid arguments when calling get(vertx,discovery,filter)"
    end
  end
end