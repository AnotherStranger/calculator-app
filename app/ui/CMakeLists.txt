file(GLOB UI_QML_JS_FILES *.qml *.js)

# Make the files visible in the qtcreator tree
add_custom_target(ubuntu-calculator-app_ui_QMlFiles ALL SOURCES ${UI_QML_JS_FILES})

install(FILES ${UI_QML_JS_FILES} DESTINATION ${UBUNTU-CALCULATOR-APP_DIR}/ui)

