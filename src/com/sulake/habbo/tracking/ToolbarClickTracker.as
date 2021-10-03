package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1321:IHabboTracking;
      
      private var var_1903:Boolean = false;
      
      private var var_2491:int = 0;
      
      private var var_1785:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1321 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1321 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1903 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2491 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1903)
         {
            return;
         }
         ++this.var_1785;
         if(this.var_1785 <= this.var_2491)
         {
            this.var_1321.track("toolbar",param1);
         }
      }
   }
}
