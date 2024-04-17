package com.keepup

import android.annotation.SuppressLint
import android.content.Context
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import android.util.Base64
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import java.security.MessageDigest
class MainActivity: FlutterActivity() {
    override fun attachBaseContext(newBase: Context?) {
        super.attachBaseContext(newBase)

        printHashKey()
    }

    @SuppressLint("PackageManagerGetSignatures")
    fun printHashKey() {
        try {
            val info: PackageInfo = packageManager.getPackageInfo(packageName, PackageManager.GET_SIGNATURES)
            for (signature in info.signatures) {
                val md: MessageDigest = MessageDigest.getInstance("SHA")
                md.update(signature.toByteArray())
                val hashKey = String(Base64.encode(md.digest(), 0))
                Log.e("TAG", "printHashKey() Hash Key: $hashKey")
            }
        } catch (e: Exception) {
            Log.e("TAG", "printHashKey()", e)
        }
    }
}
