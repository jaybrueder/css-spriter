# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spittle}
  s.version = "0.9.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["aberant", "tjennings"]
  s.date = %q{2009-11-17}
  s.description = %q{pure ruby PNG}
  s.email = ["qzzzq1@gmail.com", "tyler.jennings@gmail.com"]
  s.executables = ["png_info", "spittle"]
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "bin/png_info",
     "bin/spittle",
     "examples/sprites/README",
     "examples/sprites/apple/apple.png",
     "examples/sprites/apple/divider.png",
     "examples/sprites/apple/downloads.png",
     "examples/sprites/apple/fragment.css",
     "examples/sprites/apple/iphone.png",
     "examples/sprites/apple/itunes.png",
     "examples/sprites/apple/mac.png",
     "examples/sprites/apple/search.png",
     "examples/sprites/apple/sprite.png",
     "examples/sprites/apple/store.png",
     "examples/sprites/apple/support.png",
     "examples/sprites/fragment.css",
     "examples/sprites/index.html",
     "examples/sprites/many_sized_cats/cat-on-keyboard.png",
     "examples/sprites/many_sized_cats/darth_cat.png",
     "examples/sprites/many_sized_cats/fragment.css",
     "examples/sprites/many_sized_cats/music-keyboard-cat.png",
     "examples/sprites/many_sized_cats/sprite.png",
     "examples/sprites/server.rb",
     "examples/sprites/sprite.css",
     "examples/sprites/words/fragment.css",
     "examples/sprites/words/latitude.png",
     "examples/sprites/words/of.png",
     "examples/sprites/words/set.png",
     "examples/sprites/words/specified.png",
     "examples/sprites/words/sprite.css",
     "examples/sprites/words/sprite.png",
     "init.rb",
     "lib/spittle.rb",
     "lib/spittle/chunk.rb",
     "lib/spittle/directory_spriter.rb",
     "lib/spittle/file_header.rb",
     "lib/spittle/filters.rb",
     "lib/spittle/idat.rb",
     "lib/spittle/iend.rb",
     "lib/spittle/ihdr.rb",
     "lib/spittle/image.rb",
     "lib/spittle/parser.rb",
     "lib/spittle/processor.rb",
     "lib/spittle/sprite.rb",
     "lib/spittle/stylesheet_builder.rb",
     "spec/builders/image_builder.rb",
     "spec/css_fragments/deep/style/fragment.css",
     "spec/css_fragments/some/fragment.css",
     "spec/expected_output/merge_right_test.png",
     "spec/expected_output/write_test.png",
     "spec/images/lightening.png",
     "spec/integration_spec.rb",
     "spec/lib/file_header_spec.rb",
     "spec/lib/idat_spec.rb",
     "spec/lib/ihdr_spec.rb",
     "spec/lib/image_spec.rb",
     "spec/lib/parser_spec.rb",
     "spec/lib/sprite_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/sprite_dirs/words/latitude.png",
     "spec/sprite_dirs/words/of.png",
     "spec/sprite_dirs/words/set.png",
     "spec/sprite_dirs/words/specified.png",
     "spec/tmp/merge_right_test.png",
     "spec/tmp/write_test.png",
     "spittle.gemspec",
     "tasks/spittle_tasks.rake"
  ]
  s.homepage = %q{http://github.com/aberant/spittle}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{pure ruby PNG}
  s.test_files = [
    "spec/builders/image_builder.rb",
     "spec/integration_spec.rb",
     "spec/lib/file_header_spec.rb",
     "spec/lib/idat_spec.rb",
     "spec/lib/ihdr_spec.rb",
     "spec/lib/image_spec.rb",
     "spec/lib/parser_spec.rb",
     "spec/lib/sprite_spec.rb",
     "spec/spec_helper.rb",
     "examples/sprites/server.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

