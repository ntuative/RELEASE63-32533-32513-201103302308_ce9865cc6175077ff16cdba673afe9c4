package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_671:String;
      
      private var var_869:String;
      
      private var var_2346:String;
      
      private var var_1662:String;
      
      private var var_2343:int;
      
      private var var_2341:String;
      
      private var var_2345:int;
      
      private var var_2347:int;
      
      private var var_2342:int;
      
      private var _respectLeft:int;
      
      private var var_786:int;
      
      private var var_2344:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_671 = param1.readString();
         this.var_869 = param1.readString();
         this.var_2346 = param1.readString();
         this.var_1662 = param1.readString();
         this.var_2343 = param1.readInteger();
         this.var_2341 = param1.readString();
         this.var_2345 = param1.readInteger();
         this.var_2347 = param1.readInteger();
         this.var_2342 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_786 = param1.readInteger();
         this.var_2344 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_671;
      }
      
      public function get sex() : String
      {
         return this.var_869;
      }
      
      public function get customData() : String
      {
         return this.var_2346;
      }
      
      public function get realName() : String
      {
         return this.var_1662;
      }
      
      public function get tickets() : int
      {
         return this.var_2343;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2341;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2345;
      }
      
      public function get directMail() : int
      {
         return this.var_2347;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2342;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_786;
      }
      
      public function get identityId() : int
      {
         return this.var_2344;
      }
   }
}
