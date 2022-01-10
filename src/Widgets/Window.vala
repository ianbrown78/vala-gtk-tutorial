public class Jarvis.Window : Gtk.ApplicationWindow {
    public Window(Gtk.Application app) {
        Object(
            application: app
        );
    }

    private GLib.Settings settings;

    construct {
        //title = "This is my Vala Test";
        window_position = Gtk.WindowPosition.CENTER;
        set_default_size(300, 600);

        settings = new GLib.Settings("com.github.ianbrown78.jarvis");
        
        move(settings.get_int("pos-x"), settings.get_int("pos-y"));
        resize(settings.get_int("window-width"), settings.get_int("window-height"));

        delete_event.connect(e => {
            return before_destroy();
        });

        var headerbar = new Jarvis.HeaderBar();
        set_titlebar(headerbar);
        
        show_all();
    }

    public bool before_destroy() {
        int width, height, x, y;

        get_size(out width, out height);
        get_position(out x, out y);

        settings.set_int("pos-x", x);
        settings.set_int("pos-y", y);
        settings.set_int("window-width", width);
        settings.set_int("window-height", height);

        return false;
    }
}