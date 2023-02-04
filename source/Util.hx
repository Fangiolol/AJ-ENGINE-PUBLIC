package;

import openfl.utils.Assets;
import sys.io.File;
import sys.FileSystem;
import openfl.utils.ByteArray;
import openfl.utils.AssetType;

using StringTools;

class Util // inútil
{
  public static function getContent(id:String):String
  {
    #if mobile
    return Assets.getText(id);
    #else
    return File.getContent(id);
    #end
  }
  
  public static function exists(id:String, type:AssetType = null):Bool 
  {
    #if mobile
    return Assets.exists(id);
    #else
    return FileSystem.exists(id);
    #end
  }
  
  public static function getBytes(id:String):ByteArray
  {
    return Assets.getBytes(id);
  }
  
  public static function readDirectory(library:String):Array<String>
  {
    var something:Array<String> = [];
    var bruh = Assets.list();
    #if mobile 
    for (folder in bruh.filter(text -> text.contains('$library')))
    {
      if (!folder.startsWith('.'))
      something.push(folder);
    }
    return something;
    #else
    return FileSystem.readDirectory(library);
    #end
  }
}