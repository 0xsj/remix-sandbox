#!/bin/bash

# Script to create comprehensive learning directory structure
# Usage: ./init.sh [language]
# Example: ./init.sh rust

LANG=${1:-python}  # Default to python if no argument provided

# Set file extension based on language
case $LANG in
    rust)
        EXT="rs"
        ;;
    scala)
        EXT="scala"
        ;;
    typescript)
        EXT="ts"
        ;;
    python)
        EXT="py"
        ;;
    go)
        EXT="go"
        ;;
    *)
        echo "Unknown language: $LANG"
        echo "Supported languages: rust, scala, typescript, python, go"
        exit 1
        ;;
esac

echo "Creating comprehensive learning directory structure for $LANG..."

# Create comprehensive DSA structure with leetcode directory organized by problem numbers
mkdir -p dsa/leetcode/{0001-0100,0101-0200,0201-0300,0301-0400,0401-0500,0501-0600,0601-0700,0701-0800,0801-0900,0901-1000,1001-1100,1101-1200,1201-1300,1301-1400,1401-1500,1501-1600,1601-1700,1701-1800,1801-1900,1901-2000,2001-2100,2101-2200,2201-2300,2301-2400,2401-2500,2501-2600,2601-2700,2701-2800,2801-2900,2901-3000}
mkdir -p dsa/implementation/{arrays,linked_lists,trees,graphs,sorting,searching,heaps,hash_tables,stacks_queues,tries,probabilistic,advanced_trees,string_algorithms,geometric,union_find,segment_trees,suffix_arrays,b_trees,skip_lists,persistent_structures,compression,bit_manipulation}

# Create comprehensive fundamentals structure (24 weeks, 160 topics)
mkdir -p fundamentals/week_01_basics/{01_variables_and_types,02_strings_and_formatting,03_numbers_and_math,04_booleans_and_logic,05_basic_io,06_comments_and_documentation,07_basic_operators}

mkdir -p fundamentals/week_02_control_flow/{08_conditionals,09_loops,10_break_continue,11_switch_case,12_error_basics}

mkdir -p fundamentals/week_03_data_structures/{13_arrays_lists,14_dictionaries_maps,15_sets,16_tuples,17_nested_structures}

mkdir -p fundamentals/week_04_functions/{18_function_basics,19_parameters_arguments,20_return_values,21_scope_and_closures,22_higher_order_functions}

mkdir -p fundamentals/week_05_oop_basics/{23_classes_and_objects,24_constructors,25_methods_and_properties,26_inheritance,27_encapsulation}

mkdir -p fundamentals/week_06_intermediate/{28_file_handling,29_modules_and_imports,30_package_management,31_testing_basics,32_debugging,33_regular_expressions,34_data_validation}

mkdir -p fundamentals/week_07_error_and_resource/{35_exception_types,36_try_catch_patterns,37_error_propagation,38_custom_exceptions,39_logging_and_monitoring,40_resource_management,41_cleanup_patterns}

mkdir -p fundamentals/week_08_memory_and_performance/{42_memory_models,43_value_vs_reference,44_garbage_collection,45_profiling_basics,46_optimization_techniques,47_benchmarking,48_cache_efficiency}

mkdir -p fundamentals/week_09_concurrency/{49_threads_basics,50_async_programming,51_synchronization,52_race_conditions,53_parallel_processing,54_channels_and_messaging,55_concurrency_patterns}

mkdir -p fundamentals/week_10_types_and_oop/{56_polymorphism,57_composition_vs_inheritance,58_interfaces_protocols,59_abstract_classes,60_metaprogramming_basics,61_generics_and_variance,62_type_inference}

mkdir -p fundamentals/week_11_functional_programming/{63_immutability,64_pure_functions,65_map_filter_reduce,66_function_composition,67_monads_and_functors,68_pattern_matching,69_tail_recursion}

mkdir -p fundamentals/week_12_io_and_networking/{70_file_systems,71_serialization_formats,72_http_clients,73_sockets_basics,74_streams_and_buffers,75_binary_protocols,76_async_io}

mkdir -p fundamentals/week_13_databases/{77_database_connections,78_sql_basics,79_orm_patterns,80_migrations,81_connection_pooling,82_transactions,83_nosql_basics}

mkdir -p fundamentals/week_14_web_development/{84_http_servers,85_routing,86_middleware,87_websockets,88_static_files,89_cors_and_headers,90_request_lifecycle}

mkdir -p fundamentals/week_15_apis_and_services/{91_rest_apis,92_graphql_basics,93_grpc_basics,94_authentication,95_rate_limiting,96_api_documentation,97_service_discovery}

mkdir -p fundamentals/week_16_security/{98_input_validation,99_encryption_basics,100_secure_storage,101_common_vulnerabilities,102_security_headers,103_secrets_management,104_auth_patterns}

mkdir -p fundamentals/week_17_testing_advanced/{105_unit_testing,106_integration_testing,107_mocking_and_stubs,108_test_coverage,109_property_testing,110_benchmark_testing,111_fuzzing_basics}

mkdir -p fundamentals/week_18_tooling_and_ecosystem/{112_package_managers,113_build_systems,114_linting_formatting,115_dependency_management,116_virtual_environments,117_documentation_tools,118_debugging_tools}

mkdir -p fundamentals/week_19_deployment_and_ops/{119_containerization,120_environment_config,121_monitoring_logging,122_health_checks,123_graceful_shutdown,124_metrics_and_tracing,125_feature_flags}

mkdir -p fundamentals/week_20_advanced_topics/{126_reflection_introspection,127_code_generation,128_ffi_and_bindings,129_compiler_internals,130_language_extensions,131_macros_and_codegen,132_unsafe_operations}

mkdir -p fundamentals/week_21_distributed_basics/{133_cap_theorem,134_consistency_models,135_distributed_transactions,136_consensus_basics,137_event_sourcing,138_cqrs_pattern,139_saga_pattern}

mkdir -p fundamentals/week_22_data_processing/{140_streaming_vs_batch,141_map_reduce_basics,142_pipeline_patterns,143_backpressure,144_data_validation,145_etl_patterns,146_event_driven_arch}

mkdir -p fundamentals/week_23_state_management/{147_state_machines,148_event_stores,149_caching_strategies,150_session_management,151_distributed_state,152_persistence_patterns,153_data_migration}

mkdir -p fundamentals/week_24_performance_patterns/{154_profiling_strategies,155_memory_optimization,156_cpu_optimization,157_io_optimization,158_caching_layers,159_lazy_evaluation,160_performance_testing}

# Language-specific adjustments
if [ "$LANG" = "rust" ]; then
    mkdir -p fundamentals/rust_specific/{ownership_borrowing,lifetimes,traits_vs_interfaces,unsafe_rust,procedural_macros}
elif [ "$LANG" = "go" ]; then
    mkdir -p fundamentals/go_specific/{goroutines_channels,interfaces_embedding,defer_panic_recover,context_package,go_modules}
elif [ "$LANG" = "scala" ]; then
    mkdir -p fundamentals/scala_specific/{implicits_givens,higher_kinded_types,type_classes,effect_systems,akka_actors}
fi

# Create comprehensive patterns structure
mkdir -p patterns/{creational,structural,behavioral,functional,architectural,concurrency,distributed,data_access,messaging,resilience}

# Create app project categories (comprehensive real-world systems)
mkdir -p app/{file_processing,http_servers,database,cli_tools,apis,authentication,cryptography,security,messaging,caching,monitoring,configuration,networking,streaming,searching,batch_processing,protocols,proxies,queues,schedulers,etl_pipelines,websockets,state_machines,event_stores,service_mesh,feature_flags}

# Create template files with appropriate extensions
echo "# Variables and Types

## Core Concepts
- Variable declaration and initialization
- Type systems (static vs dynamic)
- Type checking and conversion
- Scope and lifetime

## Language-Specific Notes
[Add $LANG-specific details here]

## Common Patterns
[Add common usage patterns]
" > fundamentals/week_01_basics/01_variables_and_types/README.md

echo "// Examples will go here" > fundamentals/week_01_basics/01_variables_and_types/examples.$EXT
echo "// Exercises will go here" > fundamentals/week_01_basics/01_variables_and_types/exercises.$EXT
echo "// Solutions will go here" > fundamentals/week_01_basics/01_variables_and_types/solutions.$EXT

# Create DSA README files
echo "# LeetCode Solutions

This directory contains LeetCode problem solutions organized by problem number.

## Structure
- 0001-0100: Problems 1-100
- 0101-0200: Problems 101-200
- ... and so on

Each solution file is named by problem number and title, e.g.:
- 0001_two_sum.$EXT
- 0015_3sum.$EXT
- 0042_trapping_rain_water.$EXT
" > dsa/leetcode/README.md

echo "# Binary Search Implementation" > dsa/implementation/searching/README.md
echo "# Bloom Filters and Probabilistic Data Structures" > dsa/implementation/probabilistic/README.md
echo "# Hash Tables and Hash Maps" > dsa/implementation/hash_tables/README.md
echo "# Tries and Prefix Trees" > dsa/implementation/tries/README.md
echo "# Union-Find (Disjoint Set) Data Structure" > dsa/implementation/union_find/README.md
echo "# Segment Trees for Range Queries" > dsa/implementation/segment_trees/README.md
echo "# B-Trees and B+ Trees" > dsa/implementation/b_trees/README.md

echo "# Creational Design Patterns" > patterns/creational/README.md
echo "# Concurrency Patterns" > patterns/concurrency/README.md
echo "# Distributed System Patterns" > patterns/distributed/README.md
echo "# Data Access Patterns" > patterns/data_access/README.md

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
echo "# Queue Systems and Job Processing" > app/queues/README.md
echo "# Task Schedulers and Cron Systems" > app/schedulers/README.md
echo "# ETL and Data Pipeline Systems" > app/etl_pipelines/README.md
echo "# WebSocket and Real-time Communication" > app/websockets/README.md
echo "# State Machine Implementations" > app/state_machines/README.md

echo ""
echo "✅ Directory structure created successfully for $LANG!"
echo ""
echo "📁 Structure includes:"
echo "  • DSA: LeetCode solutions (organized by problem number) + implementations"
echo "  • 24-week fundamentals curriculum (160 topics)"
if [ "$LANG" = "rust" ] || [ "$LANG" = "go" ] || [ "$LANG" = "scala" ]; then
    echo "  • Language-specific topics for $LANG"
fi
echo "  • Design patterns: 10 categories including concurrency and distributed"
echo "  • App: 26 real-world project categories"
echo ""
echo "📊 Total learning modules: 160+ fundamental topics + DSA + patterns + projects"
echo ""
echo "📝 Template files created in:"
echo "  • fundamentals/week_01_basics/01_variables_and_types/"
echo "  • dsa/leetcode/README.md"
echo "  • Sample README files in major sections"
echo ""
echo "🚀 Ready to start your comprehensive $LANG learning journey!"