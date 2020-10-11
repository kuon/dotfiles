use pulsectl::controllers::DeviceControl;
use pulsectl::controllers::SourceController;

fn main() {
    let mut handler = SourceController::create();

    let device = handler
        .get_device_by_name("alsa_input.usb-Yamaha_Corporation_MG-XU-00.iec958-stereo")
        .expect("Cannot get input info");

    if device.mute {
        println!("<span foreground=\"red\" size=\"large\">MIC MUTE</span>");
    } else {
        println!("<span foreground=\"green\" size=\"large\">MIC OPEN</span>");
    }
}
