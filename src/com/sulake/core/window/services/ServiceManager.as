package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2914:uint;
      
      private var var_148:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_266:IWindowContext;
      
      private var var_1264:IMouseDraggingService;
      
      private var var_1267:IMouseScalingService;
      
      private var var_1262:IMouseListenerService;
      
      private var var_1263:IFocusManagerService;
      
      private var var_1265:IToolTipAgentService;
      
      private var var_1266:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2914 = 0;
         this.var_148 = param2;
         this.var_266 = param1;
         this.var_1264 = new WindowMouseDragger(param2);
         this.var_1267 = new WindowMouseScaler(param2);
         this.var_1262 = new WindowMouseListener(param2);
         this.var_1263 = new FocusManager(param2);
         this.var_1265 = new WindowToolTipAgent(param2);
         this.var_1266 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1264 != null)
         {
            this.var_1264.dispose();
            this.var_1264 = null;
         }
         if(this.var_1267 != null)
         {
            this.var_1267.dispose();
            this.var_1267 = null;
         }
         if(this.var_1262 != null)
         {
            this.var_1262.dispose();
            this.var_1262 = null;
         }
         if(this.var_1263 != null)
         {
            this.var_1263.dispose();
            this.var_1263 = null;
         }
         if(this.var_1265 != null)
         {
            this.var_1265.dispose();
            this.var_1265 = null;
         }
         if(this.var_1266 != null)
         {
            this.var_1266.dispose();
            this.var_1266 = null;
         }
         this.var_148 = null;
         this.var_266 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1264;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1267;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1262;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1263;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1265;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1266;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
