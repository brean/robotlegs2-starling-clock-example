package example.model {
    import flash.events.IEventDispatcher;
    
    import example.model.events.ClockUpdateEvent;

    public class ClockModel {
	    [Inject]
	    public var eventDispatcher:IEventDispatcher;
	    
        // our value object (vo) is a simple data instance
	    private var date:Date;
	    
	    public function updateDate(date:Date):void {
            //This is step 5./6a. "Model updates VO" in the 
            //Class Diagram at http://www.robotlegs.org/diagram/ 
	        this.date = date;
	        //the vo has been updated - inform everyone that cares
	        
            //This is step 6./7a. "Model sends event #3 (with VO as
            //payload)" in the 
            //Class Diagram at http://www.robotlegs.org/diagram/ 
	        eventDispatcher.dispatchEvent(new ClockUpdateEvent(date));
	    }
	    
    }
}
