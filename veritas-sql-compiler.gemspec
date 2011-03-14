# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{veritas-sql-compiler}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Kubb"]
  s.date = %q{2011-03-12}
  s.description = %q{Generate SQL from a veritas relation}
  s.email = %q{dan.kubb@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc",
    "TODO"
  ]
  s.files = [
    "Gemfile",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "TODO",
    "config/flay.yml",
    "config/flog.yml",
    "config/roodi.yml",
    "config/site.reek",
    "config/yardstick.yml",
    "lib/veritas/base_relation.rb",
    "lib/veritas/sql/compiler.rb",
    "lib/veritas/sql/compiler/generator/attribute.rb",
    "lib/veritas/sql/compiler/generator/direction.rb",
    "lib/veritas/sql/compiler/generator/identifier.rb",
    "lib/veritas/sql/compiler/generator/literal.rb",
    "lib/veritas/sql/compiler/generator/logic.rb",
    "lib/veritas/sql/compiler/generator/relation.rb",
    "lib/veritas/sql/compiler/generator/relation/binary.rb",
    "lib/veritas/sql/compiler/generator/relation/set.rb",
    "lib/veritas/sql/compiler/generator/relation/unary.rb",
    "lib/veritas/sql/compiler/version.rb",
    "lib/veritas/sql/compiler/visitor.rb",
    "spec/rcov.opts",
    "spec/shared/command_method_behavior.rb",
    "spec/shared/generated_sql_behavior.rb",
    "spec/shared/idempotent_method_behavior.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "spec/unit/veritas/base_relation/name_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/attribute/visit_veritas_attribute_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/direction/visit_veritas_relation_operation_order_ascending_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/direction/visit_veritas_relation_operation_order_descending_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/identifier/visit_identifier_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/class_methods/dup_frozen_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/class_methods/format_time_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_class_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_date_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_date_time_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_enumerable_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_false_class_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_nil_class_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_numeric_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_string_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_time_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_true_class_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_connective_conjunction_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_connective_disjunction_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_connective_negation_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_equality_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_exclusion_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_greater_than_or_equal_to_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_greater_than_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_inclusion_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_inequality_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_less_than_or_equal_to_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_less_than_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_proposition_false_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_proposition_true_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/base/to_subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/base/visit_veritas_base_relation_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/class_methods/subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/to_s_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/to_subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/visit_veritas_algebra_join_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/visit_veritas_algebra_product_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/class_methods/subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/name_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/set/to_s_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/set/to_subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/set/visit_veritas_algebra_difference_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/set/visit_veritas_algebra_intersection_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/set/visit_veritas_algebra_union_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/to_sql_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/to_s_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/to_subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_algebra_projection_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_algebra_rename_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_algebra_restriction_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_base_relation_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_relation_operation_limit_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_relation_operation_offset_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_relation_operation_order_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_relation_operation_reverse_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/visit_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/visited_spec.rb",
    "spec/unit/veritas/sql/compiler/visitor/class_methods/handler_for_spec.rb",
    "spec/unit/veritas/sql/compiler/visitor/visit_spec.rb",
    "spec/unit/veritas/sql/compiler/visitor/visited_spec.rb",
    "tasks/ci.rake",
    "tasks/clean.rake",
    "tasks/quality/flay.rake",
    "tasks/quality/flog.rake",
    "tasks/quality/heckle.rake",
    "tasks/quality/metric_fu.rake",
    "tasks/quality/reek.rake",
    "tasks/quality/roodi.rake",
    "tasks/quality/yardstick.rake",
    "tasks/spec.rake",
    "tasks/yard.rake",
    "veritas-sql-compiler.gemspec"
  ]
  s.homepage = %q{https://github.com/dkubb/veritas-sql-compiler}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Ruby Relational Algebra to SQL}
  s.test_files = [
    "spec/shared/command_method_behavior.rb",
    "spec/shared/generated_sql_behavior.rb",
    "spec/shared/idempotent_method_behavior.rb",
    "spec/spec_helper.rb",
    "spec/unit/veritas/base_relation/name_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/attribute/visit_veritas_attribute_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/direction/visit_veritas_relation_operation_order_ascending_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/direction/visit_veritas_relation_operation_order_descending_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/identifier/visit_identifier_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/class_methods/dup_frozen_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/class_methods/format_time_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_class_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_date_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_date_time_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_enumerable_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_false_class_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_nil_class_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_numeric_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_string_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_time_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/literal/visit_true_class_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_connective_conjunction_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_connective_disjunction_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_connective_negation_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_equality_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_exclusion_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_greater_than_or_equal_to_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_greater_than_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_inclusion_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_inequality_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_less_than_or_equal_to_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_predicate_less_than_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_proposition_false_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/logic/visit_veritas_logic_proposition_true_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/base/to_subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/base/visit_veritas_base_relation_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/class_methods/subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/to_s_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/to_subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/visit_veritas_algebra_join_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/binary/visit_veritas_algebra_product_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/class_methods/subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/name_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/set/to_s_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/set/to_subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/set/visit_veritas_algebra_difference_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/set/visit_veritas_algebra_intersection_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/set/visit_veritas_algebra_union_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/to_sql_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/to_s_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/to_subquery_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_algebra_projection_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_algebra_rename_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_algebra_restriction_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_base_relation_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_relation_operation_limit_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_relation_operation_offset_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_relation_operation_order_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/unary/visit_veritas_relation_operation_reverse_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/visit_spec.rb",
    "spec/unit/veritas/sql/compiler/generator/relation/visited_spec.rb",
    "spec/unit/veritas/sql/compiler/visitor/class_methods/handler_for_spec.rb",
    "spec/unit/veritas/sql/compiler/visitor/visit_spec.rb",
    "spec/unit/veritas/sql/compiler/visitor/visited_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<veritas>, ["= 0.0.2"])
      s.add_development_dependency(%q<backports>, ["~> 2.0.2"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.1"])
    else
      s.add_dependency(%q<veritas>, ["= 0.0.2"])
      s.add_dependency(%q<backports>, ["~> 2.0.2"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_dependency(%q<rspec>, ["~> 1.3.1"])
    end
  else
    s.add_dependency(%q<veritas>, ["= 0.0.2"])
    s.add_dependency(%q<backports>, ["~> 2.0.2"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rake>, ["~> 0.8.7"])
    s.add_dependency(%q<rspec>, ["~> 1.3.1"])
  end
end

