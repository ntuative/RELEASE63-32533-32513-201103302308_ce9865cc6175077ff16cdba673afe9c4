package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_674;
         param1["bitmap"] = const_821;
         param1["border"] = const_800;
         param1["border_notify"] = const_1688;
         param1["button"] = const_519;
         param1["button_thick"] = const_922;
         param1["button_icon"] = const_1618;
         param1["button_group_left"] = const_714;
         param1["button_group_center"] = const_902;
         param1["button_group_right"] = const_752;
         param1["canvas"] = const_661;
         param1["checkbox"] = const_654;
         param1["closebutton"] = const_1170;
         param1["container"] = const_407;
         param1["container_button"] = const_712;
         param1["display_object_wrapper"] = const_756;
         param1["dropmenu"] = const_452;
         param1["dropmenu_item"] = const_578;
         param1["frame"] = const_394;
         param1["frame_notify"] = const_1672;
         param1["header"] = const_838;
         param1["html"] = const_1169;
         param1["icon"] = const_1052;
         param1["itemgrid"] = const_1194;
         param1["itemgrid_horizontal"] = const_559;
         param1["itemgrid_vertical"] = const_851;
         param1["itemlist"] = const_1127;
         param1["itemlist_horizontal"] = const_415;
         param1["itemlist_vertical"] = const_390;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1660;
         param1["menu"] = const_1461;
         param1["menu_item"] = const_1640;
         param1["submenu"] = const_1247;
         param1["minimizebox"] = const_1553;
         param1["notify"] = const_1619;
         param1["null"] = const_845;
         param1["password"] = const_901;
         param1["radiobutton"] = const_824;
         param1["region"] = const_525;
         param1["restorebox"] = const_1525;
         param1["scaler"] = const_660;
         param1["scaler_horizontal"] = const_1598;
         param1["scaler_vertical"] = const_1583;
         param1["scrollbar_horizontal"] = const_482;
         param1["scrollbar_vertical"] = const_859;
         param1["scrollbar_slider_button_up"] = const_1151;
         param1["scrollbar_slider_button_down"] = const_1265;
         param1["scrollbar_slider_button_left"] = const_1080;
         param1["scrollbar_slider_button_right"] = const_1093;
         param1["scrollbar_slider_bar_horizontal"] = const_1166;
         param1["scrollbar_slider_bar_vertical"] = const_1091;
         param1["scrollbar_slider_track_horizontal"] = const_1055;
         param1["scrollbar_slider_track_vertical"] = const_1207;
         param1["scrollable_itemlist"] = const_1530;
         param1["scrollable_itemlist_vertical"] = const_587;
         param1["scrollable_itemlist_horizontal"] = const_1188;
         param1["selector"] = const_920;
         param1["selector_list"] = const_923;
         param1["submenu"] = const_1247;
         param1["tab_button"] = const_534;
         param1["tab_container_button"] = const_1172;
         param1["tab_context"] = const_504;
         param1["tab_content"] = const_1084;
         param1["tab_selector"] = const_818;
         param1["text"] = const_574;
         param1["input"] = const_739;
         param1["toolbar"] = const_1651;
         param1["tooltip"] = const_406;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
