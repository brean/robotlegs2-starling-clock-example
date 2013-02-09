package example.view.events {
    import flash.events.Event

    public class ButtonClickEvent extends Event {
        public static const CLICKED:String = "CLICKED";
        
        public function ButtonClickEvent() {
            super(CLICKED);
        }
        
        public override function clone():Event {
            return new ButtonClickEvent();
        }
    }
}
