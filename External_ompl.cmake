set ( SB_PROJECT OMPL )

set( OMPL_MAJOR 1 )
set( OMPL_MINOR 3 )
set( OMPL_BUILD 1 )
set( OMPL_VERSION "${OMPL_MAJOR}.${OMPL_MINOR}.${OMPL_BUILD}" )

ExternalProject_Add(
    ${SB_PROJECT}
    PREFIX ${SB_PROJECT}
    URL "https://bitbucket.org/ompl/ompl/downloads/ompl-${OMPL_VERSION}-Source.zip"
    URL_MD5 56b3e911ea5c33b004ca1418d7d9c4b1
    INSTALL_DIR ${SB_INSTALL_DIR}
    CMAKE_ARGS
        -DCMAKE_INSTALL_PREFIX:PATH=${SB_INSTALL_DIR}
        -DOMPL_REGISTRATION:BOOL=OFF
        -DOMPL_BUILD_DEMO:BOOL=OFF
        -DOMPL_BUILD_TESTS:BOOL=OFF
        -DOMPL_BUILD_PYTESTS:BOOL=OFF
)
