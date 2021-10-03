package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_509:uint = 0;
      
      public static const const_1455:uint = 1;
      
      public static const const_1937:int = 0;
      
      public static const const_1853:int = 1;
      
      public static const const_1938:int = 2;
      
      public static const const_1981:int = 3;
      
      public static const const_1574:int = 4;
      
      public static const const_396:int = 5;
      
      public static var var_401:IEventQueue;
      
      private static var var_660:IEventProcessor;
      
      private static var var_1906:uint = const_509;
      
      private static var stage:Stage;
      
      private static var var_156:IWindowRenderer;
       
      
      private var var_2701:EventProcessorState;
      
      private var var_2702:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_215:DisplayObjectContainer;
      
      protected var var_2920:Boolean = true;
      
      protected var var_1309:Error;
      
      protected var var_2103:int = -1;
      
      protected var var_1318:IInternalWindowServices;
      
      protected var var_1578:IWindowParser;
      
      protected var var_2873:IWindowFactory;
      
      protected var var_149:IDesktopWindow;
      
      protected var var_1579:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_563:Boolean = false;
      
      private var var_2700:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_156 = param2;
         this._localization = param4;
         this.var_215 = param5;
         this.var_1318 = new ServiceManager(this,param5);
         this.var_2873 = param3;
         this.var_1578 = new WindowParser(this);
         this.var_2702 = param7;
         if(!stage)
         {
            if(this.var_215 is Stage)
            {
               stage = this.var_215 as Stage;
            }
            else if(this.var_215.stage)
            {
               stage = this.var_215.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_149 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_215.addChild(this.var_149.getDisplayObject());
         this.var_215.doubleClickEnabled = true;
         this.var_215.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2701 = new EventProcessorState(var_156,this.var_149,this.var_149,null,this.var_2702);
         inputMode = const_509;
         this.var_1579 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1906;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_401)
         {
            if(var_401 is IDisposable)
            {
               IDisposable(var_401).dispose();
            }
         }
         if(var_660)
         {
            if(var_660 is IDisposable)
            {
               IDisposable(var_660).dispose();
            }
         }
         switch(value)
         {
            case const_509:
               var_401 = new MouseEventQueue(stage);
               var_660 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1455:
               var_401 = new TabletEventQueue(stage);
               var_660 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_509;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_215.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_215.removeChild(IGraphicContextHost(this.var_149).getGraphicContext(true) as DisplayObject);
            this.var_149.destroy();
            this.var_149 = null;
            this.var_1579.destroy();
            this.var_1579 = null;
            if(this.var_1318 is IDisposable)
            {
               IDisposable(this.var_1318).dispose();
            }
            this.var_1318 = null;
            this.var_1578.dispose();
            this.var_1578 = null;
            var_156 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1309;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2103;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1309 = param2;
         this.var_2103 = param1;
         if(this.var_2920)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1309 = null;
         this.var_2103 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1318;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1578;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2873;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_149;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_149.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1574,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1579;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_149,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_149)
         {
            this.var_149 = null;
         }
         if(param1.state != WindowState.const_514)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_156.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_563 = true;
         if(this.var_1309)
         {
            throw this.var_1309;
         }
         var_660.process(this.var_2701,var_401);
         this.var_563 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2700 = true;
         var_156.update(param1);
         this.var_2700 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_149 != null && !this.var_149.disposed)
         {
            if(this.var_215 is Stage)
            {
               this.var_149.width = Stage(this.var_215).stageWidth;
               this.var_149.height = Stage(this.var_215).stageHeight;
            }
            else
            {
               this.var_149.width = this.var_215.width;
               this.var_149.height = this.var_215.height;
            }
         }
      }
   }
}
