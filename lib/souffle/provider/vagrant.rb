require 'souffle/template'
require 'ostruct'

# The Vagrant souffle provider.
class Souffle::Provider::Vagrant < Souffle::Provider::Base
  attr_reader :vagrant_dir

  # Setup the internal Vagrant configuration and object.
  def initialize
    super()
    @vagrant_dir = @system.try_opt(:vagrant_dir)
    create_new_vm_group unless current_folder_has_souffle_config?
    generate_vagrant_config
  end

  # Creates a system using vagrant as the provider.
  # 
  # @param [ Souffle::System ] system The system to instantiate.
  # @param [ String ] tag_prefix The tag prefix to use for the system.
  def create_system(system, tag_prefix=nil)
  end

  # Takes a node definition and begins the provisioning process.
  # 
  # @param [ Souffle::Node ] node The node to instantiate.
  # @param [ String ] tag The tag to use for the node.
  def create_node(node, tag=nil)
  end

  # Noop.
  def create_raid; end

  # Checks if the current folder has the souffle configuration object.
  # 
  # @return [ Boolean ] Whether or not we're in a souffle Vagrant project.
  def current_folder_has_souffle_config?
    File.exists? "#{Dir.pwd}/souffle.json"
  end

  # Creates a new virtualmachine group.
  def create_new_vm_group
  end

  # Generates the multi-vm configuration.
  def generate_vagrant_config
    template = Souffle::Template.new('Vagrantfile.erb')
    temp_binding = OpenStruct.new
    temp_binding.version = Souffle::VERSION
    
    template.render(temp_binding)
  end
end
