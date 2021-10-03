package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_673:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1125:String = "inventory_effects";
      
      public static const const_1134:String = "inventory_badges";
      
      public static const const_1479:String = "inventory_clothes";
      
      public static const const_1560:String = "inventory_furniture";
       
      
      private var var_2395:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_673);
         this.var_2395 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2395;
      }
   }
}
