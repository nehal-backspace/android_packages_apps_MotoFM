package com.motorola.fmradio;

import com.motorola.fmradio.IFMRadioPlayerServiceCallbacks;

interface IFMRadioPlayerService {
    boolean powerOn();
    void powerOff();

    boolean tune(int freq);
    boolean seek(int freq, boolean upward);
    boolean stopSeek();
    int getCurrentFrequency();

    boolean scan();
    boolean stopScan();

    void setAudioRouting(int mode);
    int getAudioRouting();

    void registerCallbacks(IFMRadioPlayerServiceCallbacks cb);
    void unregisterCallbacks();
}
