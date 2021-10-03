package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1602:String = "WE_CREATE";
      
      public static const const_1730:String = "WE_CREATED";
      
      public static const const_1614:String = "WE_DESTROY";
      
      public static const const_331:String = "WE_DESTROYED";
      
      public static const const_1597:String = "WE_OPEN";
      
      public static const const_1615:String = "WE_OPENED";
      
      public static const const_1620:String = "WE_CLOSE";
      
      public static const const_1612:String = "WE_CLOSED";
      
      public static const const_1505:String = "WE_FOCUS";
      
      public static const const_301:String = "WE_FOCUSED";
      
      public static const const_1726:String = "WE_UNFOCUS";
      
      public static const const_1625:String = "WE_UNFOCUSED";
      
      public static const const_1738:String = "WE_ACTIVATE";
      
      public static const const_1498:String = "WE_ACTIVATED";
      
      public static const const_1506:String = "WE_DEACTIVATE";
      
      public static const const_487:String = "WE_DEACTIVATED";
      
      public static const const_554:String = "WE_SELECT";
      
      public static const const_62:String = "WE_SELECTED";
      
      public static const const_864:String = "WE_UNSELECT";
      
      public static const const_733:String = "WE_UNSELECTED";
      
      public static const const_1916:String = "WE_ATTACH";
      
      public static const const_1818:String = "WE_ATTACHED";
      
      public static const const_1836:String = "WE_DETACH";
      
      public static const const_1912:String = "WE_DETACHED";
      
      public static const const_1715:String = "WE_LOCK";
      
      public static const const_1515:String = "WE_LOCKED";
      
      public static const const_1617:String = "WE_UNLOCK";
      
      public static const const_1477:String = "WE_UNLOCKED";
      
      public static const const_763:String = "WE_ENABLE";
      
      public static const const_305:String = "WE_ENABLED";
      
      public static const const_878:String = "WE_DISABLE";
      
      public static const const_240:String = "WE_DISABLED";
      
      public static const const_1662:String = "WE_RELOCATE";
      
      public static const const_349:String = "WE_RELOCATED";
      
      public static const const_1544:String = "WE_RESIZE";
      
      public static const const_49:String = "WE_RESIZED";
      
      public static const WINDOW_EVENT_MINIMIZE:String = "WE_MINIMIZE";
      
      public static const const_1658:String = "WE_MINIMIZED";
      
      public static const const_1529:String = "WE_MAXIMIZE";
      
      public static const const_1468:String = "WE_MAXIMIZED";
      
      public static const const_1744:String = "WE_RESTORE";
      
      public static const const_1559:String = "WE_RESTORED";
      
      public static const const_1856:String = "WE_ARRANGE";
      
      public static const const_1840:String = "WE_ARRANGED";
      
      public static const const_105:String = "WE_UPDATE";
      
      public static const const_1952:String = "WE_UPDATED";
      
      public static const const_1924:String = "WE_CHILD_RELOCATE";
      
      public static const const_522:String = "WE_CHILD_RELOCATED";
      
      public static const const_2025:String = "WE_CHILD_RESIZE";
      
      public static const const_333:String = "WE_CHILD_RESIZED";
      
      public static const const_1843:String = "WE_CHILD_REMOVE";
      
      public static const const_556:String = "WE_CHILD_REMOVED";
      
      public static const const_1987:String = "WE_PARENT_RELOCATE";
      
      public static const const_1828:String = "WE_PARENT_RELOCATED";
      
      public static const const_1959:String = "WE_PARENT_RESIZE";
      
      public static const const_1562:String = "WE_PARENT_RESIZED";
      
      public static const const_200:String = "WE_OK";
      
      public static const const_931:String = "WE_CANCEL";
      
      public static const const_106:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_471:String = "WE_SCROLL";
      
      public static const const_172:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_467:IWindow;
      
      protected var var_1571:Boolean;
      
      protected var var_1572:Boolean;
      
      private var var_1057:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow = null, param3:IWindow = null, param4:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_467 = param3;
         this.var_1571 = false;
         this.var_1572 = param4;
         super(param1);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = false ? POOL.pop() : new WindowEvent(param1);
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_467 = param3;
         _loc5_.var_1572 = param4;
         _loc5_.var_1057 = false;
         return _loc5_;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_467;
      }
      
      override public function get cancelable() : Boolean
      {
         return this.var_1572;
      }
      
      public function recycle() : void
      {
         if(this.var_1057)
         {
            throw new Error("Event already recycled!");
         }
         this._type = null;
         this.var_467 = null;
         this._window = null;
         this.var_1057 = true;
         this.var_1571 = false;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1571 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1571;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","cancelable","window");
      }
   }
}
