public class MyApp.Window : Gtk.ApplicationWindow {
    public Window(Gtk.Application app) {
        Object(
            application: app
        );
    }

    construct {
        title = "This is my Vala Test";
        window_position = Gtk.WindowPosition.CENTER;
        set_default_size(400, 200);
        
        show_all();
    }
}