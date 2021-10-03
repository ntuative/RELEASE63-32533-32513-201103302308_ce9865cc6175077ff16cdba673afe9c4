package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1269:String = "M";
      
      public static const const_1503:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_384:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_869:String = "";
      
      private var var_671:String = "";
      
      private var var_2473:String = "";
      
      private var var_2157:int;
      
      private var var_2313:int = 0;
      
      private var var_2474:String = "";
      
      private var var_2475:int = 0;
      
      private var var_2307:int = 0;
      
      private var var_2667:String = "";
      
      private var var_186:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_186 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_186)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_154;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_186)
         {
            this.var_154 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_153;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_186)
         {
            this.var_153 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_384;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_384 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_186)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_186)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_869;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_869 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_671 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2473;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_2473 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2157;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2157 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2313;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2313 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2474;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_2474 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2475;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2475 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2307;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_186)
         {
            this.var_2307 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2667;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_186)
         {
            this.var_2667 = param1;
         }
      }
   }
}
