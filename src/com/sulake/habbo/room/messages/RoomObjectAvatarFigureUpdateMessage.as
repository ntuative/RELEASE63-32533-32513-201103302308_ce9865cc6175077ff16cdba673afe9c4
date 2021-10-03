package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_671:String;
      
      private var var_2571:String;
      
      private var var_1017:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_671 = param1;
         this.var_1017 = param2;
         this.var_2571 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function get race() : String
      {
         return this.var_2571;
      }
      
      public function get gender() : String
      {
         return this.var_1017;
      }
   }
}
