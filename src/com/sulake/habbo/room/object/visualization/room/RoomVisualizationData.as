package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_555:WallRasterizer;
      
      private var var_554:FloorRasterizer;
      
      private var var_842:WallAdRasterizer;
      
      private var var_556:LandscapeRasterizer;
      
      private var var_841:PlaneMaskManager;
      
      private var var_840:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_555 = new WallRasterizer();
         this.var_554 = new FloorRasterizer();
         this.var_842 = new WallAdRasterizer();
         this.var_556 = new LandscapeRasterizer();
         this.var_841 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_840;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_554;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_555;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_842;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_556;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_841;
      }
      
      public function dispose() : void
      {
         if(this.var_555 != null)
         {
            this.var_555.dispose();
            this.var_555 = null;
         }
         if(this.var_554 != null)
         {
            this.var_554.dispose();
            this.var_554 = null;
         }
         if(this.var_842 != null)
         {
            this.var_842.dispose();
            this.var_842 = null;
         }
         if(this.var_556 != null)
         {
            this.var_556.dispose();
            this.var_556 = null;
         }
         if(this.var_841 != null)
         {
            this.var_841.dispose();
            this.var_841 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_555 != null)
         {
            this.var_555.clearCache();
         }
         if(this.var_554 != null)
         {
            this.var_554.clearCache();
         }
         if(this.var_556 != null)
         {
            this.var_556.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_555.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_554.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_842.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_556.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_841.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_840)
         {
            return;
         }
         this.var_555.initializeAssetCollection(param1);
         this.var_554.initializeAssetCollection(param1);
         this.var_842.initializeAssetCollection(param1);
         this.var_556.initializeAssetCollection(param1);
         this.var_841.initializeAssetCollection(param1);
         this.var_840 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
