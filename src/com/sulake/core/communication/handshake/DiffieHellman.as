package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_915:BigInteger;
      
      private var var_2188:BigInteger;
      
      private var var_1959:BigInteger;
      
      private var var_2760:BigInteger;
      
      private var var_1524:BigInteger;
      
      private var var_1958:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1524 = param1;
         this.var_1958 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1524.toString() + ",generator: " + this.var_1958.toString() + ",secret: " + param1);
         this.var_915 = new BigInteger();
         this.var_915.fromRadix(param1,param2);
         this.var_2188 = this.var_1958.modPow(this.var_915,this.var_1524);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1959 = new BigInteger();
         this.var_1959.fromRadix(param1,param2);
         this.var_2760 = this.var_1959.modPow(this.var_915,this.var_1524);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2188.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2760.toRadix(param1);
      }
   }
}
