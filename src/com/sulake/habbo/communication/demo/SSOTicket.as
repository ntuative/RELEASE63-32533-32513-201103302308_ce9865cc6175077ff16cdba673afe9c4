package com.sulake.habbo.communication.demo
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.habbo.communication.IHabboWebLogin;
   import com.sulake.habbo.communication.enum.HabboWeb;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class SSOTicket extends EventDispatcher
   {
      
      public static const const_419:String = "success";
      
      public static const const_303:String = "failure";
       
      
      private var var_42:URLLoader;
      
      private var var_1323:String;
      
      private var var_1322:IHabboWebLogin;
      
      private var var_2922:String;
      
      private var var_1581:String;
      
      private var var_1723:String;
      
      private var _assets:IAssetLibrary;
      
      private var var_2108:Boolean;
      
      public function SSOTicket(param1:IAssetLibrary, param2:IHabboWebLogin, param3:String, param4:Boolean = true)
      {
         super();
         this._assets = param1;
         this.var_1322 = param2;
         this.var_1323 = "http://" + param3 + "/client";
         if(!param4)
         {
            this.var_1322.init();
            this.var_1322.addEventListener(HabboWeb.const_223,this.requestClientURL);
         }
         else
         {
            this.requestClientURL();
         }
      }
      
      public function get ticket() : String
      {
         return this.var_1581;
      }
      
      public function get isFacebookUser() : Boolean
      {
         return this.var_2108;
      }
      
      public function get flashClientUrl() : String
      {
         return this.var_1723;
      }
      
      private function requestClientURL(param1:Event = null) : void
      {
         var _loc2_:String = this.var_1323;
         if(this._assets.hasAsset(_loc2_))
         {
            Logger.log("[CoreLocalizationManager] reload localization for url: " + this.var_1323);
         }
         var _loc3_:URLRequest = new URLRequest(this.var_1323);
         if(this._assets.hasAsset(_loc2_))
         {
            this._assets.removeAsset(this._assets.getAssetByName(_loc2_));
         }
         var _loc4_:AssetLoaderStruct = this._assets.loadAssetFromFile(_loc2_,_loc3_,"text/plain");
         _loc4_.addEventListener(AssetLoaderEvent.const_29,this.clientURLComplete);
      }
      
      private function clientURLComplete(param1:Event = null) : void
      {
         var facebookData:Object = null;
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null)
         {
            return;
         }
         var data:String = loaderStruct.assetLoader.content as String;
         if(data.indexOf("account/reauthenticate\"") > -1)
         {
            this.var_1322.requestReAuthenticate();
         }
         else
         {
            try
            {
               this.var_1581 = /\"sso.ticket\" : \"(.*?)\"/.exec(data)[1];
               this.var_1723 = /\"flash.client.url\" : \"(.*?)\"/.exec(data)[1];
               facebookData = /\"facebook.user\" : \"(.*?)\"/.exec(data);
               if(facebookData)
               {
                  this.var_2108 = Boolean(facebookData[1]);
               }
               if(this.var_1581.length > 0)
               {
                  dispatchEvent(new Event(const_419));
               }
               else
               {
                  dispatchEvent(new Event(const_303));
               }
            }
            catch(e:Error)
            {
               dispatchEvent(new Event(const_303));
            }
         }
      }
   }
}
