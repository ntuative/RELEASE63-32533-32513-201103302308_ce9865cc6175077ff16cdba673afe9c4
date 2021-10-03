package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1017:int;
      
      private var var_837:Boolean;
      
      private var var_1663:Boolean;
      
      private var var_671:String;
      
      private var var_1413:int;
      
      private var var_1660:String;
      
      private var var_1659:String;
      
      private var var_1662:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1017 = param1.readInteger();
         this.var_837 = param1.readBoolean();
         this.var_1663 = param1.readBoolean();
         this.var_671 = param1.readString();
         this.var_1413 = param1.readInteger();
         this.var_1660 = param1.readString();
         this.var_1659 = param1.readString();
         this.var_1662 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1017;
      }
      
      public function get online() : Boolean
      {
         return this.var_837;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1663;
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function get categoryId() : int
      {
         return this.var_1413;
      }
      
      public function get motto() : String
      {
         return this.var_1660;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1659;
      }
      
      public function get realName() : String
      {
         return this.var_1662;
      }
   }
}
