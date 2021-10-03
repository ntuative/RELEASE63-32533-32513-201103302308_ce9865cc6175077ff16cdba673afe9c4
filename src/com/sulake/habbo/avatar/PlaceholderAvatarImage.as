package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_728:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_753)
         {
            _structure = null;
            _assets = null;
            var_272 = null;
            var_285 = null;
            var_671 = null;
            var_564 = null;
            var_334 = null;
            if(!var_1313 && var_45)
            {
               var_45.dispose();
            }
            var_45 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_771 = null;
            var_753 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_728[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_728[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_411:
               switch(_loc3_)
               {
                  case AvatarAction.const_905:
                  case AvatarAction.const_564:
                  case AvatarAction.const_359:
                  case AvatarAction.const_670:
                  case AvatarAction.const_395:
                  case AvatarAction.const_694:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_307:
            case AvatarAction.const_702:
            case AvatarAction.const_221:
            case AvatarAction.const_757:
            case AvatarAction.const_872:
            case AvatarAction.const_662:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
