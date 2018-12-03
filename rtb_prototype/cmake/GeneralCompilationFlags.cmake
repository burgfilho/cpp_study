if(ENABLE_LTO)
    add_compile_options(-flto
        -rdynamic
        -fuse-ld=gold
        -Wl,-O2
        -Wl,-r
        -Wl,--gc-sections
        -Wl,--discard-all
        -Wl,--no-undefined
        -Wl,--no-as-needed
        -Wl,--icf=safe)
endif()

if(ENABLE_HARDENING)
    add_compile_options(-fstack-check
        -fstack-protector-strong
        -Wtrampolines
        -Wstack-protector
        -Wstrict-overflow
        -Wformat=2
        -Werror=format-security
        -Wl,-z,noexecstack
        -Wl,-z,noexecheap
        -Wl,-z,defs
        -Wl,-z,relro
        -Wl,-z,now)

add_definitions(-D_FORTIFY_SOURCE=2 -D_GLIBCXX_ASSERTIONS)
endif()

if(ENABLE_NATIVE_TUNING)
    add_compile_options(-march=sandybridge -mtune=sandybridge)
endif()

if(ENABLE_INSTRUMENTATION)
    add_compile_options(-O0
        -pg
        -g
        -fprofile-arcs
        -ftest-coverage
        --coverage
        -Wl,-lgcov)

    set(CMAKE_CXX_LINKER_FLAGS "${CMAKE_CXX_LINKER_FLAGS} --coverage")
    set(CMAKE_C_LINKER_FLAGS "${CMAKE_C_LINKER_FLAGS} --coverage")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --coverage")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} --coverage")
endif()
