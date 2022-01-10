public class Jarvis.HeaderBar : Gtk.HeaderBar {
    public Jarvis.Window main_window { get; construct; }

    public HeaderBar(Jarvis.Window window) {
        Object (
            main_window: window
        );
    }

    construct {

        set_show_close_button(true);

        // add button
        var add_button = new Gtk.Button.with_label("Add");
        add_button.get_style_context().add_class("suggested-action");
        add_button.valign = Gtk.Align.CENTER;
        pack_start(add_button);

        // Add a stack & switcher
        var stack_switcher = new Gtk.StackSwitcher();
        stack_switcher.stack = main_window.stack;        
        set_custom_title(stack_switcher);

        // add icon button -> submenu popup
        var menu_button = new Gtk.Button.from_icon_name("open-menu", Gtk.IconSize.LARGE_TOOLBAR);
        menu_button.valign = Gtk.Align.CENTER;
        pack_end(menu_button);
    }
}