public class Jarvis.Window : Gtk.ApplicationWindow {
    public Window(Gtk.Application app) {
        Object(
            application: app
        );
    }

    construct {
        title = "This is my Vala Test";
        window_position = Gtk.WindowPosition.CENTER;
        set_default_size(400, 200);

        var settings = new GLib.Settings("com.github.ianbrown78.jarvis");
        move(settings.get_int("pos-x"), settings.get_int("pos-y"));
        
        show_all();
    }
}