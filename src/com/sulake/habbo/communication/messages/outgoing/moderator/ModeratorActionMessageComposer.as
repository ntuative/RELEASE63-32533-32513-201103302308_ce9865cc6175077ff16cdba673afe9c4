package com.sulake.habbo.communication.messages.outgoing.moderator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class ModeratorActionMessageComposer implements IMessageComposer, IDisposable
   {
      
      public static const const_1893:int = 0;
      
      public static const const_1581:int = 1;
      
      public static const const_1724:int = 0;
      
      public static const const_1570:int = 1;
      
      public static const const_1940:int = 2;
      
      public static const const_1587:int = 3;
      
      public static const const_1671:int = 4;
       
      
      private var var_32:Array;
      
      public function ModeratorActionMessageComposer(param1:int, param2:int, param3:String, param4:String, param5:String, param6:int = 0)
      {
         this.var_32 = new Array();
         super();
         this.var_32.push(param1);
         this.var_32.push(param2);
         this.var_32.push(param3);
         this.var_32.push(param4);
         this.var_32.push(param5);
         this.var_32.push(param6);
         this.var_32.push(false);
         this.var_32.push(false);
      }
      
      public function getMessageArray() : Array
      {
         return this.var_32;
      }
      
      public function dispose() : void
      {
         this.var_32 = null;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
   }
}
