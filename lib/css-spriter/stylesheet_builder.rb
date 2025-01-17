module CssSpriter
  class StylesheetBuilder
    def initialize(dir)
      @dir = dir
      @output_file = @dir + "/sprite.css.scss"
    end

    def output_file(file)
      @output_file = file
    end

    def css
      @css ||= Dir.glob(@dir + "/**/fragment.css.scss").inject("") {|acc, f| acc + File.read(f)}
    end

    def write
      File.open(@output_file, 'w') {|f| f.write(css)}
    end

    def cleanup
      File.delete(@output_file) rescue nil
    end
  end
end