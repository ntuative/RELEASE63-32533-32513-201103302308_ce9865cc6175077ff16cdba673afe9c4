package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowLinkEvent extends WindowEvent
   {
      
      public static const const_1682:String = "WE_LINK";
       
      
      private var var_1923:String;
      
      public function WindowLinkEvent(param1:String, param2:IWindow, param3:IWindow)
      {
         this.var_1923 = param1;
         super(const_1682,param2,param3);
      }
      
      public function get link() : String
      {
         return this.var_1923;
      }
      
      override public function clone() : Event
      {
         return new WindowLinkEvent(this.var_1923,window,related);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowLinkEvent","link","bubbles","cancelable","window");
      }
   }
}
