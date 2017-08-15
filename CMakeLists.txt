cmake_minimum_required(VERSION 2.8.12)

project(qttest LANGUAGES CXX)

set(WATCH_DIR_PATH "\"${PROJECT_SOURCE_DIR}/script/QML\"")
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

message("Project Source Dir is:${WATCH_DIR_PATH}")

configure_file (
        "${PROJECT_SOURCE_DIR}/src/WatchDirPath.h.in"
        "${PROJECT_BINARY_DIR}/WatchDirPath.h"
)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

add_executable(GameHall MACOSX_BUNDLE "src/main.cpp" "script/QML/qml.qrc")

target_link_libraries(GameHall Qt5::Core Qt5::Quick)
