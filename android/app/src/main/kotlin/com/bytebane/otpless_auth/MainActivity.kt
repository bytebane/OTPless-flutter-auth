package com.bytebane.otpless_auth

import io.flutter.embedding.android.FlutterActivity
//Import the following two for OTPless Flutter Plugin
import com.otpless.otplessflutter.OtplessFlutterPlugin;
import android.content.Intent;

class MainActivity: FlutterActivity() {

// OTPless Flutter Plugin implementation new Intent and Back Press Handling Functions
    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        val plugin = flutterEngine?.plugins?.get(OtplessFlutterPlugin::class.java)
        if (plugin is OtplessFlutterPlugin) {
            plugin.onNewIntent(intent)
        }
    }
    override fun onBackPressed() {
        val plugin = flutterEngine?.plugins?.get(OtplessFlutterPlugin::class.java)
        if (plugin is OtplessFlutterPlugin) {
            if (plugin.onBackPressed()) return
        }
    // handle other cases
        super.onBackPressed()
    }
}
