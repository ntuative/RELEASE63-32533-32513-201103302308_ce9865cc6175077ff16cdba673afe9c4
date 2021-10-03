package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1763:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_198:MsgWithRequestId;
      
      private var var_602:RoomEventData;
      
      private var var_2290:Boolean;
      
      private var var_2292:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2296:int;
      
      private var var_247:GuestRoomData;
      
      private var var_906:PublicRoomShortData;
      
      private var var_2293:int;
      
      private var var_2287:Boolean;
      
      private var var_2295:int;
      
      private var var_2289:Boolean;
      
      private var var_1691:int;
      
      private var var_2288:Boolean;
      
      private var var_1394:Array;
      
      private var var_1395:Array;
      
      private var var_2291:int;
      
      private var var_1393:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1105:Boolean;
      
      private var var_2294:int;
      
      private var var_2286:Boolean;
      
      private var var_2297:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1394 = new Array();
         this.var_1395 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_247 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_247 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_906 = null;
         this.var_247 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_906 = param1.publicSpace;
            this.var_602 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_602 != null)
         {
            this.var_602.dispose();
            this.var_602 = null;
         }
         if(this.var_906 != null)
         {
            this.var_906.dispose();
            this.var_906 = null;
         }
         if(this.var_247 != null)
         {
            this.var_247.dispose();
            this.var_247 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_247 != null)
         {
            this.var_247.dispose();
         }
         this.var_247 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_602 != null)
         {
            this.var_602.dispose();
         }
         this.var_602 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_198 != null && this.var_198 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_198 != null && this.var_198 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_198 != null && this.var_198 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_198 = param1;
         this.var_1105 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_198 = param1;
         this.var_1105 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_198 = param1;
         this.var_1105 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_198 == null)
         {
            return;
         }
         this.var_198.dispose();
         this.var_198 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_198 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_198 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_198 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_602;
      }
      
      public function get avatarId() : int
      {
         return this.var_2296;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2290;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2292;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_247;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_906;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2287;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2295;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1691;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2289;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2294;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2293;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2288;
      }
      
      public function get adIndex() : int
      {
         return this.var_2297;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2286;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2296 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2295 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2287 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2290 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2292 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2289 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1691 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2294 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2293 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2288 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2297 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2286 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1394 = param1;
         this.var_1395 = new Array();
         for each(_loc2_ in this.var_1394)
         {
            if(_loc2_.visible)
            {
               this.var_1395.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1394;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1395;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2291 = param1.limit;
         this.var_1393 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1393 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_247.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_247 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_247.flatId;
         return this.var_1691 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1393 >= this.var_2291;
      }
      
      public function startLoading() : void
      {
         this.var_1105 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1105;
      }
   }
}
