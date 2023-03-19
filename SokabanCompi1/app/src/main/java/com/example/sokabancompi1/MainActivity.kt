package com.example.sokabancompi1

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.util.PrintWriterPrinter
import android.widget.Button
import java.net.Socket
import java.util.Scanner
import java.util.concurrent.Executor

const val  TAG= "MainActivity"


class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


        findViewById<Button>(R.id.btnCompilar).setOnClickListener({
            Log.d(TAG, "socket server listening on port...")
        }



        findViewById<Button>(R.id.btnCompilar).setOnClickListener{
            Log.d(TAG, "socket client connecting to add:port...")
            Executor.newSingleThreadExecutor().excute{
                val socket = Socket( host: "localhost", port: 127.0.0.1)
                val scanner = Scanner(socket.getInputStream())
                val printWriter = PrintWriterPrinter(socket.getInputStream())

                while (scanner.hasNextLine()){
                    Log.d(TAG, "${scanner.nextLine()}")
                }
            }

        }

    }
}