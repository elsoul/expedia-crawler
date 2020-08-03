require_relative "lib/expedia/crawler/version"

Gem::Specification.new do |spec|
  spec.name          = "expedia-crawler"
  spec.version       = Expedia::Crawler::VERSION
  spec.authors       = ["FUMI-POPPIN", "James Neve"]
  spec.email         = ["fumitake.kawasaki@el-soul.com", "jamesoneve@gmail.com"]

  spec.summary       = "Expedia Data Crawler"
  spec.description   = "Empower World Travel Information Technology"
  spec.homepage      = "https://github.com/elsoul/expedia-crawler"
  spec.license       = "Apache-2.0"
  spec.metadata = { "source_code_uri" => "https://github.com/elsoul/expedia-crawler" }
  spec.required_ruby_version = ">= 2.7.0"
  # spec.metadata["allowed_push_host"] = "https://hotel.el-soul.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/elsoul/expedia-crawler"
  spec.metadata["changelog_uri"] = "https://github.com/elsoul/expedia-crawler"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
