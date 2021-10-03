package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2296:int;
      
      private var var_2017:String;
      
      private var var_2587:String;
      
      private var var_2585:Boolean;
      
      private var var_2588:Boolean;
      
      private var var_2584:int;
      
      private var var_2586:String;
      
      private var var_2583:String;
      
      private var var_1662:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2296 = param1.readInteger();
         this.var_2017 = param1.readString();
         this.var_2587 = param1.readString();
         this.var_2585 = param1.readBoolean();
         this.var_2588 = param1.readBoolean();
         param1.readString();
         this.var_2584 = param1.readInteger();
         this.var_2586 = param1.readString();
         this.var_2583 = param1.readString();
         this.var_1662 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2296;
      }
      
      public function get avatarName() : String
      {
         return this.var_2017;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2587;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2585;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2588;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2584;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2586;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2583;
      }
      
      public function get realName() : String
      {
         return this.var_1662;
      }
   }
}
