package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1823:int = 1;
      
      public static const const_1719:int = 2;
       
      
      private var var_990:String;
      
      private var var_2849:int;
      
      private var var_2847:int;
      
      private var var_2852:int;
      
      private var var_2846:int;
      
      private var var_2845:Boolean;
      
      private var var_2464:Boolean;
      
      private var var_2467:int;
      
      private var var_2466:int;
      
      private var var_2848:Boolean;
      
      private var var_2850:int;
      
      private var var_2851:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_990 = param1.readString();
         this.var_2849 = param1.readInteger();
         this.var_2847 = param1.readInteger();
         this.var_2852 = param1.readInteger();
         this.var_2846 = param1.readInteger();
         this.var_2845 = param1.readBoolean();
         this.var_2464 = param1.readBoolean();
         this.var_2467 = param1.readInteger();
         this.var_2466 = param1.readInteger();
         this.var_2848 = param1.readBoolean();
         this.var_2850 = param1.readInteger();
         this.var_2851 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_990;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2849;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2847;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2852;
      }
      
      public function get responseType() : int
      {
         return this.var_2846;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2845;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2464;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2467;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2466;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2848;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2850;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2851;
      }
   }
}
