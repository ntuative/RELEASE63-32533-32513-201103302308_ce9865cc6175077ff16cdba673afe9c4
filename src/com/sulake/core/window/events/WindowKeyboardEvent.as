package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class WindowKeyboardEvent extends WindowEvent
   {
      
      public static const const_351:String = "WKE_KEY_UP";
      
      public static const const_190:String = "WKE_KEY_DOWN";
      
      public static const const_172:String = "";
       
      
      private var var_705:KeyboardEvent;
      
      public function WindowKeyboardEvent(param1:String, param2:Event, param3:IWindow, param4:IWindow, param5:Boolean = false)
      {
         _type = param1;
         this.var_705 = KeyboardEvent(param2);
         super(param1,param3,param4,false);
      }
      
      public function get charCode() : uint
      {
         return this.var_705.charCode;
      }
      
      public function get keyCode() : uint
      {
         return this.var_705.keyCode;
      }
      
      public function get keyLocation() : uint
      {
         return this.var_705.keyLocation;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_705.altKey;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_705.shiftKey;
      }
      
      override public function clone() : Event
      {
         return new WindowKeyboardEvent(_type,this.var_705,window,related,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowKeyboardEvent","type","cancelable","window","charCode");
      }
   }
}
