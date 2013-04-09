api = 2

core=7.x

; Core 
projects[drupal][type] = core

; Contrib Modules

; Devel module
projects[admin_menu][subdir] = "contrib"
projects[devel][subdir] = "contrib"

; 
projects[advanced_help][subdir] = "contrib"
projects[block_class][subdir] = "contrib"
projects[captcha][subdir] = "contrib"
projects[captcha][version] = "1.0-beta2"
projects[colorbox][subdir] = "contrib"
projects[context][subdir] = "contrib"
projects[ctools][subdir] = "contrib"
projects[date][subdir] = "contrib"
projects[default_menu_link][subdir] = "contrib"
projects[entity][subdir] = "contrib"
projects[extlink][subdir] = "contrib"
projects[features][subdir] = "contrib"
projects[field_group][subdir] = "contrib"
projects[file_entity][subdir] = "contrib"
projects[file_entity][version] = "2.0-unstable3"
projects[google_analytics][subdir] = "contrib"
projects[imce][subdir] = "contrib"
projects[imce_mkdir][subdir] = "contrib"
projects[imce_wysiwyg][subdir] = "contrib"
projects[jquery_plugin][subdir] = "contrib"
projects[libraries][subdir] = "contrib"
projects[link][subdir] = "contrib"
projects[linkit][subdir] = "contrib"
projects[media][subdir] = "contrib"
projects[media][version] = "2.x-dev"
projects[media_browser_plus][subdir] = "contrib"
projects[media_browser_plus][version] = "1.0-beta3"
projects[media_gallery][subdir] = "contrib"
projects[media_gallery][version] = "1.0-beta7"
projects[menu_block][subdir] = "contrib"
projects[menu_position][subdir] = "contrib"
projects[metatags_quick][subdir] = "contrib"
projects[page_title][subdir] = "contrib"
projects[pathauto][subdir] = "contrib"
projects[pathologic][subdir] = "contrib"
projects[quicktabs][subdir] = "contrib"
projects[redirect][subdir] = "contrib"
projects[references][subdir] = "contrib"
projects[smtp][subdir] = "contrib"
projects[smtp][version] = "1.0-beta2"
projects[strongarm][subdir] = "contrib"
projects[textformatter][subdir] = "contrib"
projects[token][subdir] = "contrib"
projects[views][subdir] = "contrib"
projects[views_slideshow][subdir] = "contrib"
projects[weight][subdir] = "contrib"
projects[webform][subdir] = "contrib"
projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg_button_order][subdir] = "contrib"
projects[xmlsitemap][subdir] = "contrib"

; Libraries
libraries[tinymce][download][type] = "get"
libraries[tinymce][download][url] = "http://github.com/downloads/tinymce/tinymce/tinymce_3.4.7.zip"
libraries[tinymce][directory_name] = "tinymce"
libraries[tinymce][destination] = "libraries"