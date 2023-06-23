// Generated by https://quicktype.io
//
// To change quicktype's target language, run command:
//
//   "Set quicktype target language"

class Data {
    int status;
    List<Datum> data;

    Data({
        this.status,
        this.data,
    });
}

class Datum {
    String? uuid;
    String? displayName;
    String? description;
    String? developerName;
    List<String?> characterTags;
    String? displayIcon;
    String? displayIconSmall;
    String? bustPortrait;
    String? fullPortrait;
    String? fullPortraitV2;
    String? killfeedPortrait;
    String? background;
    List<String?> backgroundGradientColors;
    String? assetPath;
    bool isFullPortraitRightFacing;
    bool isPlayableCharacter;
    bool isAvailableForTest;
    bool isBaseContent;
    Role role;
    List<Ability> abilities;
    VoiceLine voiceLine;

    Datum({
        this.uuid,
        this.displayName,
        this.description,
        this.developerName,
        this.characterTags,
        this.displayIcon,
        this.displayIconSmall,
        this.bustPortrait,
        this.fullPortrait,
        this.fullPortraitV2,
        this.killfeedPortrait,
        this.background,
        this.backgroundGradientColors,
        this.assetPath,
        this.isFullPortraitRightFacing,
        this.isPlayableCharacter,
        this.isAvailableForTest,
        this.isBaseContent,
        this.role,
        this.abilities,
        this.voiceLine,
    });
}

class Ability {
    Slot slot;
    String? displayName;
    String? description;
    String? displayIcon;

    Ability({
        this.slot,
        this.displayName,
        this.description,
        this.displayIcon,
    });
}

enum Slot { ABILITY1, ABILITY2, GRENADE, ULTIMATE, PASSIVE }

class Role {
    String? uuid;
    DisplayName displayName;
    String? description;
    String? displayIcon;
    String? assetPath;

    Role({
        this.uuid,
        this.displayName,
        this.description,
        this.displayIcon,
        this.assetPath,
    });
}

enum DisplayName { INITIATOR, DUELIST, SENTINEL, CONTROLLER }

class VoiceLine {
    double minDuration;
    double maxDuration;
    List<MediaList> mediaList;

    VoiceLine({
        this.minDuration,
        this.maxDuration,
        this.mediaList,
    });
}

class MediaList {
    int id;
    String? wwise;
    String? wave;

    MediaList({
        this.id,
        this.wwise,
        this.wave,
    });
}
