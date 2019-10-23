include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Haivision/srt
    REF v1.4.0
    SHA512 b22e7c98b3a5f8ad9647f03bc697254f0f3637716a84b077307f894a193bcf0348c9c10bf09e2ae197f5c721bd6118e2b6134d6770f80eb440783c2d87dd5248
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
	#OPTIONS -DENABLE_APPS=0
)

vcpkg_install_cmake()

file(REMOVE_RECURSE ${CURRENT_PACKAGES_DIR}/debug/include)

vcpkg_copy_pdbs()

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME COPYRIGHT)

