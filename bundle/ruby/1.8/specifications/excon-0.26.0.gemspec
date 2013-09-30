# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{excon}
  s.version = "0.26.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["dpiddy (Dan Peterson)", "geemus (Wesley Beary)", "nextmat (Matt Sanders)"]
  s.date = %q{2013-09-24}
  s.description = %q{EXtended http(s) CONnections}
  s.email = %q{geemus@gmail.com}
  s.extra_rdoc_files = ["README.md"]
  s.files = ["Gemfile", "Gemfile.lock", "README.md", "Rakefile", "benchmarks/class_vs_lambda.rb", "benchmarks/concat_vs_insert.rb", "benchmarks/concat_vs_interpolate.rb", "benchmarks/cr_lf.rb", "benchmarks/downcase-eq-eq_vs_casecmp.rb", "benchmarks/excon.rb", "benchmarks/excon_vs.rb", "benchmarks/for_vs_array_each.rb", "benchmarks/for_vs_hash_each.rb", "benchmarks/has_key-vs-lookup.rb", "benchmarks/headers_case_sensitivity.rb", "benchmarks/headers_split_vs_match.rb", "benchmarks/implicit_block-vs-explicit_block.rb", "benchmarks/merging.rb", "benchmarks/single_vs_double_quotes.rb", "benchmarks/string_ranged_index.rb", "benchmarks/strip_newline.rb", "benchmarks/vs_stdlib.rb", "changelog.txt", "data/cacert.pem", "excon.gemspec", "lib/excon.rb", "lib/excon/connection.rb", "lib/excon/constants.rb", "lib/excon/errors.rb", "lib/excon/middlewares/base.rb", "lib/excon/middlewares/decompress.rb", "lib/excon/middlewares/expects.rb", "lib/excon/middlewares/idempotent.rb", "lib/excon/middlewares/instrumentor.rb", "lib/excon/middlewares/mock.rb", "lib/excon/middlewares/redirect_follower.rb", "lib/excon/middlewares/response_parser.rb", "lib/excon/response.rb", "lib/excon/socket.rb", "lib/excon/ssl_socket.rb", "lib/excon/standard_instrumentor.rb", "tests/authorization_header_tests.rb", "tests/bad_tests.rb", "tests/basic_tests.rb", "tests/data/excon.cert.crt", "tests/data/excon.cert.key", "tests/data/xs", "tests/errors_tests.rb", "tests/header_tests.rb", "tests/middlewares/decompress_tests.rb", "tests/middlewares/idempotent_tests.rb", "tests/middlewares/instrumentation_tests.rb", "tests/middlewares/mock_tests.rb", "tests/middlewares/redirect_follower.rb", "tests/proxy_tests.rb", "tests/query_string_tests.rb", "tests/rackups/basic.rb", "tests/rackups/basic.ru", "tests/rackups/basic_auth.ru", "tests/rackups/deflater.ru", "tests/rackups/proxy.ru", "tests/rackups/query_string.ru", "tests/rackups/request_headers.ru", "tests/rackups/request_methods.ru", "tests/rackups/response_header.ru", "tests/rackups/ssl.ru", "tests/rackups/ssl_verify_peer.ru", "tests/rackups/thread_safety.ru", "tests/rackups/timeout.ru", "tests/request_headers_tests.rb", "tests/request_method_tests.rb", "tests/requests_tests.rb", "tests/servers/bad.rb", "tests/servers/eof.rb", "tests/servers/error.rb", "tests/test_helper.rb", "tests/thread_safety_tests.rb", "tests/timeout_tests.rb"]
  s.homepage = %q{https://github.com/geemus/excon}
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{excon}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{speed, persistence, http(s)}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<delorean>, [">= 0"])
      s.add_development_dependency(%q<eventmachine>, [">= 0"])
      s.add_development_dependency(%q<open4>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<shindo>, [">= 0"])
      s.add_development_dependency(%q<sinatra>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<delorean>, [">= 0"])
      s.add_dependency(%q<eventmachine>, [">= 0"])
      s.add_dependency(%q<open4>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<shindo>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<delorean>, [">= 0"])
    s.add_dependency(%q<eventmachine>, [">= 0"])
    s.add_dependency(%q<open4>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<shindo>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
  end
end
