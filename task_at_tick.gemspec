Gem::Specification.new do |spec|
  spec.add_dependency 'delayed_job_active_record', ['~> 4.1', '>= 4.1.1']
  spec.authors        =  ['Sriram Kumar']
  spec.description    =  'Rails based scheduler which works with Delayed Job gem.'
  spec.email          =  ['ksrirambecse@gmail.com']
  spec.files          =  %w[README.md task_at_tick.gemspec]
  # spec.files          += Dir.glob('{contrib,lib,recipes,spec}/**/*') # rubocop:disable SpaceAroundOperators
  spec.homepage       =  'http://github.com/sriramk89/task_at_tick'
  spec.licenses       =  ['MIT']
  spec.name           =  'task_at_tick'
  spec.require_paths  =  ['lib']
  spec.summary        =  'Database-backed scheduler system -- Inspired from Clockwork'
  # spec.test_files     =  Dir.glob('spec/**/*')
  spec.version        =  '0.0.1'
end