package example {
    import robotlegs.bender.framework.impl.Context;
    import robotlegs.bender.bundles.mvcs.MVCSBundle;
    import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
    import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
    import robotlegs.bender.extensions.contextView.ContextView;
    import robotlegs.extensions.starlingViewMap.StarlingViewMapExtension;
    import example.view.StarlingView;
    import example.mediator.StarlingViewMediator;
    import example.mediator.GUIViewMediator;
    import example.mediator.MyButtonMediator;
    import example.view.GUIView;
    import example.view.button.MyButton;
    import example.model.ClockModel;
    import example.service.ClockService;
    import example.command.events.StartUpdateTimeEvent;
    import example.command.StartUpdateTimeCommand;
    import flash.display.DisplayObjectContainer;
    import starling.core.Starling;

    public class MainConfig {
        private var context:Context;
        private var mediatorMap:IMediatorMap;
        private var commandMap:IEventCommandMap;
    
        public function MainConfig(rootDisplayObject:DisplayObjectContainer, starling:Starling) {
            // create robotlegs context
            context = new Context();
            
            // install the MVCSBundle and StarlingViewMapExtension 
            context.install(MVCSBundle, StarlingViewMapExtension);
            
            // important: do not forget to add starling when you configure this
            context.configure(new ContextView(rootDisplayObject), starling);
            
            //map view to mediator (spark component)
            mediatorMap = context.injector.getInstance(IMediatorMap);
            mediatorMap.map(example.view.GUIView).toMediator(GUIViewMediator);
            
            // map starling/feathers Button to Mediator
            mediatorMap.map(example.view.button.MyButton).toMediator(MyButtonMediator);
            mediatorMap.map(example.view.StarlingView).toMediator(StarlingViewMediator);
            
            // map command to event
            commandMap = context.injector.getInstance(IEventCommandMap);
            //This is step 3. "Context maps event #2 to a command" 
            //in the Class Diagram at http://www.robotlegs.org/diagram/ .
            commandMap.map(StartUpdateTimeEvent.START, StartUpdateTimeEvent).toCommand(StartUpdateTimeCommand);
            
            // map model as Singleton
            context.injector.map(ClockModel).asSingleton();
            // map service as Singleton
            context.injector.map(ClockService).asSingleton();
        }
        
        public function deinitialize():void {
            
            context = null;
            mediatorMap = null;
            commandMap = null;
        }
    }
}
