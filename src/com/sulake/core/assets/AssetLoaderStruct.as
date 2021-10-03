package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_879:IAssetLoader;
      
      private var var_1591:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1591 = param1;
         this.var_879 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1591;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_879;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_879 != null)
            {
               if(!this.var_879.disposed)
               {
                  this.var_879.dispose();
                  this.var_879 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
