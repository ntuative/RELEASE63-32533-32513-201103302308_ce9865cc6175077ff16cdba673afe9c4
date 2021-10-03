package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_381:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1057:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1036:String = "RWOCM_PIXELS";
      
      public static const const_1213:String = "RWOCM_CREDITS";
       
      
      private var var_2764:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_381);
         this.var_2764 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2764;
      }
   }
}
