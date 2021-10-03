package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1537:String = "WN_CRETAE";
      
      public static const const_1590:String = "WN_CREATED";
      
      public static const const_1156:String = "WN_DESTROY";
      
      public static const const_1043:String = "WN_DESTROYED";
      
      public static const const_1216:String = "WN_OPEN";
      
      public static const const_1171:String = "WN_OPENED";
      
      public static const const_1239:String = "WN_CLOSE";
      
      public static const const_1124:String = "WN_CLOSED";
      
      public static const const_1202:String = "WN_FOCUS";
      
      public static const const_1161:String = "WN_FOCUSED";
      
      public static const const_1217:String = "WN_UNFOCUS";
      
      public static const const_1038:String = "WN_UNFOCUSED";
      
      public static const const_1175:String = "WN_ACTIVATE";
      
      public static const const_391:String = "WN_ACTVATED";
      
      public static const const_1211:String = "WN_DEACTIVATE";
      
      public static const const_1187:String = "WN_DEACTIVATED";
      
      public static const const_547:String = "WN_SELECT";
      
      public static const const_408:String = "WN_SELECTED";
      
      public static const const_677:String = "WN_UNSELECT";
      
      public static const const_648:String = "WN_UNSELECTED";
      
      public static const const_1025:String = "WN_LOCK";
      
      public static const const_1086:String = "WN_LOCKED";
      
      public static const const_1071:String = "WN_UNLOCK";
      
      public static const const_1253:String = "WN_UNLOCKED";
      
      public static const const_1243:String = "WN_ENABLE";
      
      public static const const_746:String = "WN_ENABLED";
      
      public static const const_1069:String = "WN_DISABLE";
      
      public static const const_848:String = "WN_DISABLED";
      
      public static const const_865:String = "WN_RESIZE";
      
      public static const const_188:String = "WN_RESIZED";
      
      public static const const_1259:String = "WN_RELOCATE";
      
      public static const const_589:String = "WN_RELOCATED";
      
      public static const const_1105:String = "WN_MINIMIZE";
      
      public static const const_1024:String = "WN_MINIMIZED";
      
      public static const const_1224:String = "WN_MAXIMIZE";
      
      public static const const_1236:String = "WN_MAXIMIZED";
      
      public static const const_1155:String = "WN_RESTORE";
      
      public static const const_1185:String = "WN_RESTORED";
      
      public static const const_387:String = "WN_CHILD_ADDED";
      
      public static const const_798:String = "WN_CHILD_REMOVED";
      
      public static const const_304:String = "WN_CHILD_RESIZED";
      
      public static const const_311:String = "WN_CHILD_RELOCATED";
      
      public static const WINDOW_NOTIFY_CHILD_ACTIVATED:String = "WN_CHILD_ACTIVATED";
      
      public static const const_575:String = "WN_PARENT_ADDED";
      
      public static const const_1096:String = "WN_PARENT_REMOVED";
      
      public static const const_532:String = "WN_PARENT_RESIZED";
      
      public static const const_1094:String = "WN_PARENT_RELOCATED";
      
      public static const const_711:String = "WN_PARENT_ACTIVATED";
      
      public static const const_590:String = "WN_STATE_UPDATED";
      
      public static const const_520:String = "WN_STYLE_UPDATED";
      
      public static const const_497:String = "WN_PARAM_UPDATED";
      
      public static const UNKNOWN:String = "UNKNOWN";
      
      private static const POOL:Array = [];
       
      
      private var _isRecycled:Boolean;
      
      public function WindowNotifyEvent()
      {
         super("",null,null);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowNotifyEvent
      {
         var _loc5_:WindowNotifyEvent = false ? POOL.pop() : new WindowNotifyEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_467 = param3;
         _loc5_.var_1572 = param4;
         _loc5_._isRecycled = false;
         return _loc5_;
      }
      
      override public function recycle() : void
      {
         if(this._isRecycled)
         {
            throw new Error("Event already recycled!");
         }
         _type = null;
         var_467 = null;
         _window = null;
         this._isRecycled = true;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(type,_window,var_467,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
