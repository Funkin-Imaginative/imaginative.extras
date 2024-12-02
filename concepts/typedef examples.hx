typedef TypeXY<T> = {
	var x:T;
	var y:T;
}
typedef Dimensions = {
	var width:Int;
	var height:Int;
}
typedef AssetTyping = {
	var image:String;
	var type:String;
}
typedef AnimationTyping = {
	var asset:AssetTyping;
	var name:String;
	var tag:String;
	var dimensions:Dimensions;
	var indices:Array<Int>;
	var offset:Position;
	var flip:TypeXY<Bool>;
	var loop:Bool;
	var fps:Int;
}
typedef AllowedModesTyping = {
	var playAsEnemy:Bool;
	var p2AsEnemy:Bool;
}
typedef CheckpointTyping = {
	var time:Float;
	var bpm:Float;
	var signature:Array<Int>;
}

typedef CharacterSection = {
	var camera:Position;
	var color:String;
	var icon:String;
	var holdlength:Float;
}
typedef BeatSection = {
	var interval:Int;
	var skipnegative:Bool;
}
typedef OffsetsSection = {
	var position:Position;
	var flip:TypeXY<Bool>;
	var scale:Position;
}
typedef SpriteSection = {
	> CharacterSection,
	> BeatSection,
	> OffsetsSection,
	var animations:Array<AnimationTyping>;
	var antialiasing:Bool;
	var flip:TypeXY<Bool>;
	var scale:Position;
}

typedef LevelSection = {
	var title:String;
	var songs:Array<String>;
	var startingDiff:Int;
	var difficulties:Array<String>;
	var variants:Array<String>;
	var objects:Array<String>;
	var color:String;
}
typedef DifficultySection = {
	var display:String;
	var variant:String;
	var scoreMult:Float;
}
typedef SongSection = {
	var name:String;
	var icon:String;
	var startingDiff:Int;
	var difficulties:Array<String>;
	var variants:Array<String>;
	var color:String;
	var allowedModes:AllowedModesTyping;
}
typedef AudioSection = {
	var artist:String;
	var name:String;
	var bpm:Float;
	var signature:Array<Int>;
	var checkpoints:Array<CheckpointTyping>;
	var offset:Float;
}
typedef MetaSection = {
	> LevelSection,
	> DifficultySection,
	> SongSection,
	> AudioSection,
}
typedef ExtraSection = {
	var name:String;
	var data:Dynamic;
}

typedef CharacterData = {
	var sprite:SpriteSection;
	var extra:Array<ExtraSection>;
}