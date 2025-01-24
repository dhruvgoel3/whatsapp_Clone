import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AccountOption/Account_Page/account_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AppUpdates/updates_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AvatarOption/avatar_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/ChatsOption/chats_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/HelpOption/help_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/InviteFriendOption/invite_friend_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/ListsOption/list_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/NotificationsOption/notifications_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/privacy_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/StorageAndData/storage_and_data.dart';

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
  Option(Icons.perm_contact_cal, 'Lists', 'Manage people and groups',(context)=>ListPage()),
  Option(Icons.chat_outlined, 'Chats', 'Theme,wallpapers,chat history',(context)=>ChatsPage()),
  Option(Icons.notifications_none, 'Notifications', 'Message,group,call tones',(context)=>NotificationsPage()),
  Option(Icons.data_saver_off_rounded, 'Storage and data', 'Network usage, auto-download',(context)=>StorageAndData()),
  Option(Icons.language, 'App language', 'English (devices language)',(context)=>Placeholder()),
  Option(Icons.help_outline, 'Help', 'Help centre, contact us,privacy policy',(context)=>HelpPage()),
  Option(Icons.people_alt_outlined, 'Invite a friend', '',(context)=>InviteFriendPage()),
  Option(Icons.security_update_good, 'App Updates', '',(context)=>AppUpdateSettings()),

];