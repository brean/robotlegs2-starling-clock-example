package example.view.button {
    import feathers.controls.Button;
    import feathers.controls.Callout;
    import feathers.controls.Label;
    import feathers.controls.Callout;
    
    import starling.events.Event;
    
    /**
     * starling Button that will be mediated
     */
    public class MyButton extends Button {
        private var calloutText:String;
        private var calloutLabel:Label = new Label();
        public var isStatic:Boolean;
        
        public function MyButton() {
            super();
            isStatic = Math.random() < 0.5;
            this.addEventListener(Event.TRIGGERED, triggered);
        }
        
        /**
         * button has been clicked - show callout
         */
        public function triggered(event:Event):void {
        	this.calloutLabel = new Label();
        	this.calloutLabel.text = this.calloutText;
        	Callout.show(calloutLabel, this);
        }
        
        /**
         * update text that is shown in the callout
         */
        public function updateText(text:String):void {
            this.calloutText = text;
            this.calloutLabel.text = text;
        }
    }
}
