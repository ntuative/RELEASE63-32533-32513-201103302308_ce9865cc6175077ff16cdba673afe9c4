package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1961:int = 0;
      
      public static const const_1644:int = 1;
      
      public static const const_1453:int = 2;
      
      public static const const_1904:int = 3;
      
      public static const const_2007:int = 4;
      
      public static const const_1909:int = 5;
      
      public static const const_1686:int = 10;
      
      public static const const_1989:int = 11;
      
      public static const const_1860:int = 12;
      
      public static const const_1809:int = 13;
      
      public static const const_1992:int = 16;
      
      public static const const_2000:int = 17;
      
      public static const const_1819:int = 18;
      
      public static const const_1969:int = 19;
      
      public static const const_1943:int = 20;
      
      public static const const_1885:int = 22;
      
      public static const const_1878:int = 23;
      
      public static const const_1822:int = 24;
      
      public static const const_1997:int = 25;
      
      public static const const_1829:int = 26;
      
      public static const const_1907:int = 27;
      
      public static const const_1815:int = 28;
      
      public static const const_2024:int = 29;
      
      public static const const_1926:int = 100;
      
      public static const const_1831:int = 101;
      
      public static const const_1832:int = 102;
      
      public static const const_1889:int = 103;
      
      public static const const_1877:int = 104;
      
      public static const const_1930:int = 105;
      
      public static const const_1979:int = 106;
      
      public static const const_1944:int = 107;
      
      public static const const_1814:int = 108;
      
      public static const const_1919:int = 109;
      
      public static const const_1812:int = 110;
      
      public static const const_1817:int = 111;
      
      public static const const_1995:int = 112;
      
      public static const const_1906:int = 113;
      
      public static const const_2008:int = 114;
      
      public static const const_1830:int = 115;
      
      public static const const_1990:int = 116;
      
      public static const const_1846:int = 117;
      
      public static const const_1928:int = 118;
      
      public static const const_1891:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1644:
            case const_1686:
               return "banned";
            case const_1453:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
