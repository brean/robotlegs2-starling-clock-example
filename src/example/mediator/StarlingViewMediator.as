package example.mediator {
    import flash.events.Event;
    import robotlegs.bender.bundles.mvcs.Mediator;
    import example.view.StarlingView;
    import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;

    public class StarlingViewMediator extends Mediator {
        [Inject]
        public var view:StarlingView;

        public override function initialize():void {
        }
    }
}
