package example.mediator {
    import flash.events.Event;
    import robotlegs.bender.bundles.mvcs.Mediator;
    import example.view.GUIView;
    import example.view.events.ButtonClickEvent;
    import example.model.events.ClockUpdateEvent;
    import example.command.events.StartUpdateTimeEvent;

    public class GUIViewMediator extends Mediator {
        [Inject]
        public var view:GUIView;

        public override function initialize():void {
            //mediate the view: map events from the view to functions
            //This is part of step 2. "Mediator caputres #1 event..." in the 
            //Class Diagram at http://www.robotlegs.org/diagram/ .
            addViewListener(ButtonClickEvent.CLICKED, clicked);
            
            //This step 8. "Mediator captures event #3 and updates UI" in the 
            //Class Diagram at http://www.robotlegs.org/diagram/ .
            eventDispatcher.addEventListener(ClockUpdateEvent.CLOCK_UPDATE, clockUpdate);
        }
        
        private function clicked(event:ButtonClickEvent):void {
            //dispatch event to start command
            
            //This is part of step 2. "Mediator sends event #2" in the 
            //Class Diagram at http://www.robotlegs.org/diagram/ .
            dispatch(new StartUpdateTimeEvent());
        }
        
        /**
         * update time from event that is dispatched by the service
         */
        private function clockUpdate(e:ClockUpdateEvent):void {
            //just show the current time in the label.
            //format is:
            //weekday month day hour:minute:second GMT+X year
            view.time.text = e.datetime.toString();
        }
    }
}
