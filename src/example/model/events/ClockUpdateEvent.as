package example.model.events {
    import flash.events.Event;

    public class ClockUpdateEvent extends Event {
        public static const CLOCK_UPDATE:String = "CLOCK_UPDATE";
        public var datetime:Date;
        
        public function ClockUpdateEvent(datetime:Date) {
            this.datetime = datetime;
            super(CLOCK_UPDATE);
        }
        
        public override function clone():Event {
            return new ClockUpdateEvent(datetime);
        }
    }
}
