package com.andr0day.shelldetect;

import android.app.Application;
import android.content.Intent;

public class App extends Application {

    public void onCreate() {

        Intent intent = new Intent(this, Service1.class);
        startService(intent);
    }
}
