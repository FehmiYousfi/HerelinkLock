.class Lorg/cubepilot/herelinksettings/util/Updater$PInfo;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/util/Updater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PInfo"
.end annotation


# instance fields
.field private appname:Ljava/lang/String;

.field private pname:Ljava/lang/String;

.field final synthetic this$0:Lorg/cubepilot/herelinksettings/util/Updater;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/util/Updater;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->this$0:Lorg/cubepilot/herelinksettings/util/Updater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 47
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->appname:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->pname:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->versionName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->versionCode:I

    return-void
.end method

.method static synthetic access$000(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->appname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->appname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->versionCode:I

    return p0
.end method

.method static synthetic access$102(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;I)I
    .locals 0

    .line 46
    iput p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->versionCode:I

    return p1
.end method

.method static synthetic access$200(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->versionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lorg/cubepilot/herelinksettings/util/Updater$PInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$PInfo;->pname:Ljava/lang/String;

    return-object p1
.end method
