public class Jarvis.HeaderBar : Gtk.HeaderBar {
    construct {

        set_show_close_button(true);

        // add button
        var add_button = new Gtk.Button.with_label("Add");
        add_button.get_style_context().add_class("suggested-action");
        add_button.valign = Gtk.Align.CENTER;
        pack_start(add_button);

        // Add a stack & switcher
        var stack_switcher = new Gtk.StackSwitcher();
        var stack = new Gtk.Stack();
        stack_switcher.stack = stack;

        var outstanding = new Gtk.Grid();
        outstanding.add(new Gtk.Label("Outstanding Tasks"));
        var completed = new Gtk.Grid();
        completed.add(new Gtk.Label("Completed Tasks"));

        stack.add_titled(outstanding, "outstanding", "Outstanding");
        stack.add_titled(completed, "completed", "Completed");

        set_custom_title(stack_switcher);

        // add icon button -> submenu popup
        var menu_button = new Gtk.Button.from_icon_name("open-menu", Gtk.IconSize.LARGE_TOOLBAR);
        menu_button.valign = Gtk.Align.CENTER;
        pack_end(menu_button);
    }
}