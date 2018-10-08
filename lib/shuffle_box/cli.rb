require "shuffle_box"
require "thor"
require "yaml"

module ShuffleBox
  class CLI < Thor
    desc "pickup `foo.yml` (number)", "returns random combinations of your yaml file"
    def pickup(yml, num="1")
      num.to_i.times do
        y = YAML.load_file(yml)
        puts y.values.map { |ary| ary[rand(ary.length)] }.join
      end
    end
  end
end
