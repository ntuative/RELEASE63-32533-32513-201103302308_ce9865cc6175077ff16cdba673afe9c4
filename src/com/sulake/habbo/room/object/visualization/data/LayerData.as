package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_738:String = "";
      
      public static const const_355:int = 0;
      
      public static const const_436:int = 255;
      
      public static const const_731:Boolean = false;
      
      public static const const_599:int = 0;
      
      public static const const_533:int = 0;
      
      public static const const_375:int = 0;
      
      public static const const_1041:int = 1;
      
      public static const const_1059:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2239:String = "";
      
      private var var_1836:int = 0;
      
      private var var_2212:int = 255;
      
      private var var_2770:Boolean = false;
      
      private var var_2769:int = 0;
      
      private var var_2767:int = 0;
      
      private var var_2768:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2239 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2239;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1836 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1836;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2212 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2212;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2770 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2770;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2769 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2769;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2767 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2767;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2768 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2768;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
