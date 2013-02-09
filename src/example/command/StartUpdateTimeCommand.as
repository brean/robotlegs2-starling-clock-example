package example.command {
	/* 
	 * <p>Please note: you do not have to extend the Command class.
	 * Any class with an execute method can be used as Command.</p>
	 */
    import robotlegs.bender.bundles.mvcs.Command;
    import example.service.ClockService;

    public class StartUpdateTimeCommand extends Command {
        [Inject]
        public var service:ClockService;

        public override function execute():void {
            //just execute this one command and finish
            
            //This is step 4a. "Command calls method on the server"
            //in the Class Diagram at http://www.robotlegs.org/diagram/ .
            //(In this example this is just a local execution, 
            // we get the system time from the client, but this could
            // call some server-side execution in your Application)
            this.service.startClock();
        }
    }
}
