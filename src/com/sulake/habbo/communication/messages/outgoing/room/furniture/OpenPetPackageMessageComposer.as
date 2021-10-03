package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_361:int;
      
      private var var_2211:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_361 = param1;
         this.var_2211 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_361,this.var_2211];
      }
      
      public function dispose() : void
      {
      }
   }
}
