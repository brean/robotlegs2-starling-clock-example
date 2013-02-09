package example.mediator {
    import example.view.button.MyButton;
    import starling.events.Event;
    import example.model.events.ClockUpdateEvent;
    import robotlegs.extensions.starlingViewMap.impl.StarlingMediator;

    /**
     * mediate the starling/feathers Button. It will be updated every time
     * the ClockUpdateEvent is dispatched
     */
    public class MyButtonMediator extends StarlingMediator {
        [Inject]
        public var view:MyButton;

        public override function initialize():void {
            //This step 8. "Mediator captures event #3 and updates UI" in the 
            //Class Diagram at http://www.robotlegs.org/diagram/ .
            eventDispatcher.addEventListener(ClockUpdateEvent.CLOCK_UPDATE, clockUpdate);
        }
        
        /**
         * update time from event that is dispatched by the service
         */
        private function clockUpdate(e:ClockUpdateEvent):void {
            //show the current time in the label of the callout.
            //format is:
            //weekday month day hour:minute:second GMT+X year
            view.updateText( e.datetime.toString() );
        }
    }
}
