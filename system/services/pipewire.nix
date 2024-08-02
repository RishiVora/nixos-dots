
{
    pkgs,
    ...
}: {
    services = {
        # pipewire is a multimedia server
        pipewire = {
            enable = false;
            # ALSA is the raw audio interface exposed by Linux
            alsa.enable = true;
            alsa.support32Bit = true;
            # PulseAudio server emulation
            pulse.enable = true;
            # JACK is a more specialized sound server designed for audio production
            jack.enable = false;
        };
    };
}