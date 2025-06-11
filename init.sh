#!/bin/bash

# Script to create comprehensive learning directory structure
# Based on existing structure with extended fundamentals curriculum

echo "Creating comprehensive learning directory structure..."

# Note: Using existing 'app' directory for real-world projects

# Extend DSA structure with comprehensive data structures and algorithms
mkdir -p dsa/implementation/{arrays,linked_lists,trees,graphs,sorting,searching,heaps,hash_tables,stacks_queues,tries,probabilistic,advanced_trees,string_algorithms,geometric}

# Create comprehensive fundamentals structure (20 weeks, 102 topics)
mkdir -p fundamentals/week_01_basics/{01_variables_and_types,02_strings_and_formatting,03_numbers_and_math,04_booleans_and_logic,05_basic_io,06_comments_and_documentation,07_basic_operators}

mkdir -p fundamentals/week_02_control_flow/{08_conditionals,09_loops,10_break_continue,11_switch_case,12_error_basics}

mkdir -p fundamentals/week_03_data_structures/{13_arrays_lists,14_dictionaries_maps,15_sets,16_tuples,17_nested_structures}

mkdir -p fundamentals/week_04_functions/{18_function_basics,19_parameters_arguments,20_return_values,21_scope_and_closures,22_higher_order_functions}

mkdir -p fundamentals/week_05_oop_basics/{23_classes_and_objects,24_constructors,25_methods_and_properties,26_inheritance,27_encapsulation}

mkdir -p fundamentals/week_06_intermediate/{28_file_handling,29_modules_and_imports,30_package_management,31_testing_basics,32_debugging}

mkdir -p fundamentals/week_07_error_handling/{33_exception_types,34_try_catch_patterns,35_error_propagation,36_custom_exceptions,37_logging_and_monitoring}

mkdir -p fundamentals/week_08_memory_and_performance/{38_memory_management,39_garbage_collection,40_profiling_basics,41_optimization_techniques,42_benchmarking}

mkdir -p fundamentals/week_09_concurrency/{43_threads_basics,44_async_programming,45_synchronization,46_race_conditions,47_parallel_processing}

mkdir -p fundamentals/week_10_advanced_oop/{48_polymorphism,49_composition_vs_inheritance,50_interfaces_protocols,51_abstract_classes,52_metaprogramming_basics}

mkdir -p fundamentals/week_11_functional_programming/{53_immutability,54_pure_functions,55_map_filter_reduce,56_function_composition,57_monads_and_functors}

mkdir -p fundamentals/week_12_io_and_networking/{58_file_systems,59_serialization,60_http_clients,61_sockets_basics,62_streams_and_buffers}

mkdir -p fundamentals/week_13_databases/{63_database_connections,64_sql_basics,65_orm_patterns,66_migrations,67_connection_pooling}

mkdir -p fundamentals/week_14_web_development/{68_http_servers,69_routing,70_middleware,71_templating,72_static_files}

mkdir -p fundamentals/week_15_apis_and_services/{73_rest_apis,74_json_handling,75_authentication,76_rate_limiting,77_api_documentation}

mkdir -p fundamentals/week_16_security/{78_input_validation,79_encryption_basics,80_secure_storage,81_common_vulnerabilities,82_security_headers}

mkdir -p fundamentals/week_17_testing_advanced/{83_unit_testing,84_integration_testing,85_mocking_and_stubs,86_test_coverage,87_property_based_testing}

mkdir -p fundamentals/week_18_tooling_and_ecosystem/{88_package_managers,89_build_systems,90_linting_and_formatting,91_dependency_management,92_virtual_environments}

mkdir -p fundamentals/week_19_deployment_and_ops/{93_containerization,94_environment_configuration,95_monitoring_and_logging,96_health_checks,97_graceful_shutdown}

mkdir -p fundamentals/week_20_advanced_topics/{98_reflection_introspection,99_code_generation,100_ffi_and_bindings,101_compiler_internals,102_language_extensions}

# Extend patterns structure
mkdir -p patterns/{creational,structural,behavioral,functional,architectural}

# Create app project categories (fundamental systems)
mkdir -p app/{file_processing,http_servers,database,cli_tools,apis,authentication,cryptography,security,messaging,caching,monitoring,configuration,networking,streaming,searching,batch_processing,protocols,proxies}

# Create template files for a few example directories to show structure
echo "# Variables and Types

## Core Concepts
- Variable declaration and initialization
- Type systems (static vs dynamic)
- Type checking and conversion
- Scope and lifetime

## Language-Specific Notes
[Add language-specific details here]

## Common Patterns
[Add common usage patterns]
" > fundamentals/week_01_basics/01_variables_and_types/README.md

echo "# Examples will go here" > fundamentals/week_01_basics/01_variables_and_types/examples.py
echo "# Exercises will go here" > fundamentals/week_01_basics/01_variables_and_types/exercises.py
echo "# Solutions will go here" > fundamentals/week_01_basics/01_variables_and_types/solutions.py

echo "# Binary Search Implementation" > dsa/implementation/searching/README.md
echo "# Bloom Filters and Probabilistic Data Structures" > dsa/implementation/probabilistic/README.md
echo "# Hash Tables and Hash Maps" > dsa/implementation/hash_tables/README.md
echo "# Tries and Prefix Trees" > dsa/implementation/tries/README.md

echo "# Creational Design Patterns" > patterns/creational/README.md

echo "# File Processing Projects" > app/file_processing/README.md
echo "# Authentication Systems" > app/authentication/README.md
echo "# Cryptography Implementations" > app/cryptography/README.md
echo "# Security Systems" > app/security/README.md
echo "# Messaging Systems" > app/messaging/README.md
echo "# Caching Implementations" > app/caching/README.md
echo "# Streaming Data Processing" > app/streaming/README.md
echo "# Search Engines and Indexing" > app/searching/README.md
echo "# Batch Processing Systems" > app/batch_processing/README.md
echo "# Custom Protocols" > app/protocols/README.md
echo "# Proxy and Load Balancer Implementations" > app/proxies/README.md

echo ""
echo "✅ Directory structure created successfully!"
echo ""
echo "📁 Structure includes:"
echo "  • DSA: leetcode problems + fundamental implementations"
echo "  • 20-week fundamentals curriculum (102 topics)"
echo "  • Design patterns organized by category"
echo "  • App: real-world project categories"
echo ""
echo "📝 Template files created in:"
echo "  • fundamentals/week_01_basics/01_variables_and_types/"
echo "  • Sample README files in major sections"
echo ""
echo "🚀 Ready to start your comprehensive learning journey!"