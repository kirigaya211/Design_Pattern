unit clsAmplifier;

interface
uses clsDvdPlayer;

type
  TAmplifier = class
    private
      FTunerL TTuner;
      FDvdPlayer: TDvdPlayer;
      FCdPlayer: TCdPlayer;
    public
      produce TurningOn();
      produce TurningOff();
      produce SetCd();
      produce SetDvd();
      produce SetSterioSound();
      produce SetSurroundSound();
      produce SetTimer();
      produce SetVolume();
      produce SetToString();
  end;

implementation

end.
