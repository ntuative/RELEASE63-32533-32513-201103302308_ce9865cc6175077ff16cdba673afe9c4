package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2753:int;
      
      private var var_2752:int;
      
      private var var_2754:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2753 = param1;
         this.var_2752 = param2;
         this.var_2754 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2753,this.var_2752,this.var_2754];
      }
      
      public function dispose() : void
      {
      }
   }
}
