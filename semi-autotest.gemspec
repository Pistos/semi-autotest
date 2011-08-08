require File.expand_path('../lib/semi-autotest/version', __FILE__)

Gem::Specification.new do |s|
  s.date = SemiAutoTest::VERSION_DATE

  s.name = 'semi-autotest'
  s.version = SemiAutoTest::VERSION
  s.homepage = 'https://github.com/Pistos/semi-autotest'

  s.authors = ['Pistos']
  s.email   = ['semiautotest.pistos@purepistos.net']

  s.files = `git ls-files`.split("\n")

  s.summary = 'Fire off tests without being slowed down by test prep time.'
  s.description = "Fire off tests without being slowed down by test prep time."
end
