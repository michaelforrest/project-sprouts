
class FakeTaskBase < Sprout::ToolTask # :nodoc:[all]
  
  def initialize_task
    
    add_param(:input, :file) do |p|
      p.hidden_name = true
    end
    
    add_param(:debug, :boolean) do |p|
      p.hidden_value = true
      p.description = 'Toggle debug flag'
    end
    
    add_param(:source_path, :files) do |p|
      p.delimiter = '=' 
    end
    
    add_param(:library_path, :paths) do |p|
    end
    
    add_param(:hidden_name_param, :string) do |p|
      p.hidden_name = true
    end
    
    add_param(:frame_rate, :number) do |p|
      p.prefix = '--'
    end
    
    add_param(:as3, :boolean) do |p|
      p.value = true
      p.show_on_false = true
    end
    
    add_param(:default_size, :string) do |p|
      p.delimiter = ' '
    end

    add_param_alias(:sp, :source_path)
  end
  
  def execute(*args)
    File.open(name.to_s, 'w') do |f|
      f.write 'FakeTaskBase'
    end
  end
end

def fake_task_base(args, &block)
  FakeTaskBase.define_task(args, &block)
end
