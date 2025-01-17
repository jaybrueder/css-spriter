module CssSpriter
  class DirectoryProcessor

    #Changed this to fit my private needs - SCSS
    DEFAULT_TEMPLATE = <<-EOF
    @mixin <name>_<image_name>() {
      background: transparent url(<image_loc>) <offset>px 0px no-repeat;
    }

    EOF

    def initialize(dir, options = {})
      @options = options
      @dir = dir
      @sprite = Sprite.new
      @tracker = MtimeTracker.new(@dir,
                                  :exclude => ['sprite.css.scss', 'fragment.css.scss', 'sprite.png'])
    end

    def images
      Dir.glob(@dir + "/*.png").reject{|i| i.match /sprite\.png/}
    end

    def write
      return unless @tracker.has_changes?
      images.each {|f| @sprite.append_file(f)}

      @sprite.write(sprite_file)

      File.open(css_file, 'w') do |f|
        f.write(css)
      end
      @tracker.update
    end

    def cleanup
      File.delete(sprite_file) rescue nil
      File.delete(css_file) rescue nil
      @tracker.cleanup
    end

    def sprite_file
      @dir + "/sprite.png"
    end

    def css_file
      @dir + "/fragment.css.scss"
    end

    def dir_name
      @dir.split('/').last
    end

    def image_loc
      #Changed this to fit my private needs
      dir = truncate_abs_path
      base = ("/assets" + dir + "/sprite.png").gsub(/^\/.\//, "/").gsub("//", "/")
      source = @options[:source]
      base = base.gsub(source, "") if source && source != "."
      base = @options[:path_prefix] + base if @options[:path_prefix]
      base
    end

    def truncate_abs_path
      return @dir unless @options[:source]
      path_elements = @options[:source].split('/')
      path_elements.pop #we want to remove everything above the root
      to_truncate = path_elements.join("/")
      @dir.gsub(to_truncate, "")
    end

    def template_file
      @dir + "/template.css.scss"
    end

    def template
      if File.exists?(template_file)
        return File.read(template_file)
      end
      return DEFAULT_TEMPLATE
    end

    def css
      @sprite.locations.inject("") do |out, image|
        image_name, properties = image
        out << template.gsub("<name>", dir_name).
               gsub("<image_name>", image_name.to_s).
               gsub("<width>", properties[:width].to_s).
               gsub("<height>", properties[:height].to_s).
               gsub("<offset>", properties[:x].to_s).
               gsub("<image_loc>", image_loc)
      end
    end
  end
end