#include "include/flutter_demo/flutter_demo_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_demo_plugin.h"

void FlutterDemoPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_demo::FlutterDemoPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
