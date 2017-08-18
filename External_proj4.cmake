ExternalProject_Add(proj4
  PREFIX proj4
  URL "http://download.osgeo.org/proj/proj-4.9.3.tar.gz"
  URL_MD5 d598336ca834742735137c5674b214a1
  INSTALL_DIR ${DEP_INSTALL_DIR}
  DOWNLOAD_DIR ${DEP_DOWNLOAD_DIR}/proj4
  CMAKE_CACHE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=${DEP_INSTALL_DIR}
)