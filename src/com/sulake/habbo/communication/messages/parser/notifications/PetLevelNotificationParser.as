package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1810:int;
      
      private var var_2211:String;
      
      private var var_1463:int;
      
      private var var_1151:int;
      
      private var var_1792:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1810 = param1.readInteger();
         this.var_2211 = param1.readString();
         this.var_1463 = param1.readInteger();
         this.var_1151 = param1.readInteger();
         this.var_1792 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1810;
      }
      
      public function get petName() : String
      {
         return this.var_2211;
      }
      
      public function get level() : int
      {
         return this.var_1463;
      }
      
      public function get petType() : int
      {
         return this.var_1151;
      }
      
      public function get breed() : int
      {
         return this.var_1792;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
