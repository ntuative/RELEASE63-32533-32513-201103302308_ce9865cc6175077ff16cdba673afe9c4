package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_406:int;
      
      private var _type:String;
      
      private var var_1685:String;
      
      private var var_1686:int;
      
      private var var_1683:String;
      
      private var var_730:String;
      
      private var var_1684:String;
      
      private var var_2273:String;
      
      private var var_2275:uint;
      
      private var var_2274:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_406 = param1.readInteger();
         this._type = param1.readString();
         this.var_1685 = param1.readString();
         this.var_1686 = param1.readInteger();
         this.var_1683 = param1.readString();
         this.var_730 = param1.readString();
         this.var_2273 = param1.readString();
         this.var_2274 = param1.readInteger();
         var _loc2_:String = "";
         var _loc3_:int = this.var_730.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_730.charAt(_loc3_)))
         {
            _loc2_ = this.var_730.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1684 = this.var_730.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1684 = this.var_730;
         }
         this.var_2275 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_406 = 0;
         this._type = "";
         this.var_1685 = "";
         this.var_1686 = 0;
         this.var_1683 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_406;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1685;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1686;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1683;
      }
      
      public function get localizationCode() : String
      {
         return this.var_730;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2275;
      }
      
      public function get sortOrder() : uint
      {
         return this.var_2274;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1684;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2273;
      }
   }
}
