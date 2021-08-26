public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.wesleymontaigne.yourrepositoryname",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        
        
        //Create a Button
var button_hello = new Gtk.Button.with_label ("Click me!") {
    margin = 12
};

button_hello.clicked.connect (() => {
    button_hello.label = "I'm William Montaigne!";
    button_hello.sensitive = false;
});  
        
//Create new window        
var main_window = new Gtk.ApplicationWindow (this) {
default_height = 300,
default_width = 300,
title = "William Montaigne"
};
        
      
        
        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
