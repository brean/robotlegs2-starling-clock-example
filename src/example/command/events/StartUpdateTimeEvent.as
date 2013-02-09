package example.command.events {
    import flash.events.Event;

    public class StartUpdateTimeEvent extends Event {
        public static const START:String = "START";
        
        public function StartUpdateTimeEvent() {
            super(START);
        }
        
        public override function clone():Event {
            return new StartUpdateTimeEvent();
        }
    }
}
