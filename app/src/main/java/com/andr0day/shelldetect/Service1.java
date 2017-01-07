package com.andr0day.shelldetect;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class Service1 extends Service {
    public Service1() {
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

}
