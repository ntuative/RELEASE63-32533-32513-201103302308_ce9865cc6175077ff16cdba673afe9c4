package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2750:int;
      
      private var var_2751:int;
      
      private var var_2748:String;
      
      private var var_2747:int;
      
      private var var_2749:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2750 = param1;
         this.var_2751 = param2;
         this.var_2748 = param3;
         this.var_2747 = param4;
         this.var_2749 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2750,this.var_2751,this.var_2748,this.var_2747,int(this.var_2749)];
      }
      
      public function dispose() : void
      {
      }
   }
}
