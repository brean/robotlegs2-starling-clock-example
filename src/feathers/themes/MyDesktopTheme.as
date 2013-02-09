package feathers.themes {
    /**
     * extend AeonDesktopTheme to set a skin for own feathers
     * components like "MyButton"
     */
    import example.view.button.MyButton;
    import starling.display.DisplayObjectContainer;
    
    public class MyDesktopTheme extends AeonDesktopTheme {
        
        public function MyDesktopTheme(root:DisplayObjectContainer)
		{
			super(root);
		}
        
        protected override function initialize():void
		{
		    super.initialize();
            this.setInitializerForClass(MyButton, this.buttonInitializer);
        }
    }
}
