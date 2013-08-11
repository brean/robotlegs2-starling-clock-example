package example.view {
    import starling.events.Event;
    import starling.display.Sprite;
    
    import example.view.button.MyButton;
    
    public class StarlingView extends Sprite {
        public var btn:MyButton;
        
        public function StarlingView() {
            super();
            //create new custom feathers object that will be mediated
            btn = new MyButton();
            btn.updateText("this button will be updated shortly.");
            btn.x = 200;
            btn.y = 0;
            btn.label = "Click Me!";
            this.addChild(btn);
        }
    }
}
