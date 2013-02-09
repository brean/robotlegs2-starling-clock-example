package example.service {
    import flash.events.IEventDispatcher;
    
    // use the flash Timer & TimerEvent to update the clock every second
    import flash.events.TimerEvent;
    import flash.utils.Timer;
    
    import example.model.ClockModel;
    
    public class ClockService {
	    // inject shared eventDispatcher
	    [Inject]
	    public var eventDispatcher:IEventDispatcher;
	    
	    [Inject]
	    public var model:ClockModel;
	    
	    private var clockTimer:Timer;
	    
        public function ClockService() {
            //initiate the service
            this.clockTimer = new Timer(1000);
            this.clockTimer.addEventListener(TimerEvent.TIMER, onTimer);
        }
        
        public function startClock():void {
            this.clockTimer.start();
            trace("start timer");
        }
        
        /**
         * run every second (1000ms)
         * update the data on the model - the model will dispatch an event
         * after the data has been updated
         */
        private function onTimer(e:TimerEvent):void {
            //This is step 5a. "Server fetches into a Server and calls 
            //a method on the Model" in the
            //Class Diagram at http://www.robotlegs.org/diagram/ .
            //(instead of a Server we just get a new Date-instance locally
            // but you can imagine some Server communication here)
            this.model.updateDate(new Date());
        }
    }
}
