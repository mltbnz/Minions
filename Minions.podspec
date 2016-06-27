Pod::Spec.new do |spec|
  spec.name = "Minions"
  spec.version = "0.0.1"
  spec.summary = "Clapps Global Helper"
  spec.homepage = "https://github.com/mltbnz/Minions"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Malte Bünz" => 'mb@clapp.de' }
  spec.social_media_url = "http://twitter.com/vanbillstedt"

  spec.platform = :ios, "9.1"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/mltbnz/Minions.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "Minions/**/*.{h,swift}"

end