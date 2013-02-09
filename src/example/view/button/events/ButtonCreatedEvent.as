package game.button.events {
    // workaround to let the mediator know that new Buttons
    // havebeen created
    import starling.events.Event;
    import game.button.MyButton;

    public class ButtonCreatedEvent extends Event {
        public static const BUTTON_CREATED:String = "BUTTON_CREATED";
        public var buttons:Vector.<MyButton>;
        
        public function ButtonCreatedEvent(buttons:Vector.<MyButton>) {
            this.buttons = buttons;
            super(BUTTON_CREATED);
        }
    }
}
