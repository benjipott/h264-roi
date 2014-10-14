
FUNCTION(source_hash DIR)

    EXECUTE_PROCESS(
        WORKING_DIRECTORY "${DIR}/.."
        COMMAND sh hash.sh "${DIR}"
        OUTPUT_VARIABLE SOURCES_HASH
    )
    STRING(STRIP ${SOURCES_HASH} SOURCES_HASH)
    MESSAGE(STATUS "Hash: ${SOURCES_HASH}")

ENDFUNCTION(source_hash)
