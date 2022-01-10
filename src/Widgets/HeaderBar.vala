public class Jarvis.HeaderBar : Gtk.HeaderBar {
    construct {
        // set title
        set_title("Jarvis");
        // set subtitle
        set_subtitle("Let me help ya!");

        set_show_close_button(true);

        // add button
        var add_button = new Gtk.Button.with_label("Add");
        add_button.get_style_context().add_class("suggested-action");
        add_button.valign = Gtk.Align.CENTER;
        pack_start(add_button);

        // add icon button -> submenu popup
        var menu_button = new Gtk.Button.from_icon_name("open-menu", Gtk.IconSize.LARGE_TOOLBAR);
        menu_button.valign = Gtk.Align.CENTER;
        pack_end(menu_button);
    }
}