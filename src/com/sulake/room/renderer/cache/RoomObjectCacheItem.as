package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_546:RoomObjectLocationCacheItem = null;
      
      private var var_201:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_546 = new RoomObjectLocationCacheItem(param1);
         this.var_201 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_546;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_201;
      }
      
      public function dispose() : void
      {
         if(this.var_546 != null)
         {
            this.var_546.dispose();
            this.var_546 = null;
         }
         if(this.var_201 != null)
         {
            this.var_201.dispose();
            this.var_201 = null;
         }
      }
   }
}
