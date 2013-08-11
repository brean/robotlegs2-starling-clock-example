package example.view {
    import feathers.themes.MyDesktopTheme;
    import starling.display.Sprite;
    import starling.events.Event;
    
    import example.view.StarlingView;
    
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
            
            // add starling-based component
            // to show that this one will not(!) be monitored by
            // the robotlegs-starling-viewMap lib
            this.addChild(new StarlingView());
        }
    }
}
