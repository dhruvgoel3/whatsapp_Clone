import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AccountOption/Account_Page/account_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AvatarOption/avatar_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/ListsOption/list_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/privacy_page.dart';

class Option {

  final String label, text;
  final IconData icon;
  Widget Function(BuildContext) routeBuilder;
  Option(this.icon, this.label, this.text,this.routeBuilder);
}

List Options = [
  Option(Icons.vpn_key_outlined, 'Account', 'Security nofications,change number',(context)=>AccountPage()),
  Option(Icons.lock_outline, 'Privacy', 'Block contacts, disappearing messages',(context)=>PrivacyPage()),
  Option(Icons.person, 'Avatar', 'Create, edit,profile photo',(context)=>AvatarPage()),
  Option(Icons.favorite_border, 'Favourites', 'Add,reorder,remove',(context)=>ListPage()),
  Option(Icons.chat_outlined, 'Chats', 'Theme,wallpapers,chat history',(context)=>Placeholder()),
  Option(Icons.notifications_none, 'Notifications', 'Message,group,call tones',(context)=>Placeholder()),
  Option(Icons.data_saver_off_rounded, 'Storage and data', 'Network usage, auto-download',(context)=>Placeholder()),
  Option(Icons.language, 'App language', 'English (devices language)',(context)=>Placeholder()),
  Option(Icons.help_outline, 'Help', 'Help centre, contact us,privacy policy',(context)=>Placeholder()),
  Option(Icons.people_alt_outlined, 'Invite a friend', '',(context)=>Placeholder()),
];