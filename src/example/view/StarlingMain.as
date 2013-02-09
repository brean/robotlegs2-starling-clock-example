package example.view {
    import feathers.themes.MyDesktopTheme;
    import starling.display.Sprite;
    import starling.events.Event;
    import example.view.button.MyButton;
    
    /**
     * Starling-Startup class
     */
    public class StarlingMain extends Sprite  {
        /**
         * feathers theme - will automatically pass skins to any components
		 * that are added to the stage.
		 * @see http://wiki.starling-framework.org/feathers/getting-started
         */
        protected var theme:MyDesktopTheme;
    
        public function StarlingMain() {
            addEventListener(Event.ADDED_TO_STAGE, onAdded);
        }
        
        public function onAdded(e:Event=null):void {
            this.removeEventListener(Event.ADDED_TO_STAGE, onAdded);
            // set Starling feathers theme 
            this.theme = new MyDesktopTheme(this.stage);
            
            //create new custom feathers object that will be mediated
            var btn:MyButton = new MyButton();
            btn.updateText("this button will be updated shortly.");
            btn.x = 200;
            btn.y = 0;
            btn.label = "Click Me!";
            this.addChild(btn);
        }
    }
}
