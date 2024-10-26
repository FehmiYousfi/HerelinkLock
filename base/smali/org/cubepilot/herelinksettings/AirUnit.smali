.class public Lorg/cubepilot/herelinksettings/AirUnit;
.super Landroidx/fragment/app/Fragment;
.source "AirUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;,
        Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;,
        Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;,
        Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;,
        Lorg/cubepilot/herelinksettings/AirUnit$sendADBCommand;,
        Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;,
        Lorg/cubepilot/herelinksettings/AirUnit$CheckChannel;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AirUnit"

.field private static airversion:Ljava/lang/String; = ""

.field private static pDialog:Landroid/app/ProgressDialog; = null

.field static params:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static productKey:Ljava/lang/String; = ""

.field private static update_channel:Ljava/lang/String;


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field private progress_bar_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lorg/cubepilot/herelinksettings/AirUnit;->progress_bar_type:I

    return-void
.end method

.method public static CheckBaseBandVersion(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1146
    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    const-string v1, "gsm.version.baseband"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ".T34-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".T49-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".T44-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cubepilot/herelinksettings/AirUnit$3;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/AirUnit$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private static SendQGCCommand(Ljava/lang/String;)V
    .locals 0

    .line 1192
    invoke-static {p0}, Lorg/cubepilot/herelinksettings/RadioStatService;->sendCmd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    sput-object p0, Lorg/cubepilot/herelinksettings/AirUnit;->update_channel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->airversion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    sput-object p0, Lorg/cubepilot/herelinksettings/AirUnit;->airversion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Landroid/app/ProgressDialog;
    .locals 1

    .line 91
    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 91
    sput-object p0, Lorg/cubepilot/herelinksettings/AirUnit;->pDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-static {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->SendQGCCommand(Ljava/lang/String;)V

    return-void
.end method

.method private file_url()Ljava/lang/String;
    .locals 4

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://herelinkfw.cubepilot.org/airunit/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/cubepilot/herelinksettings/AirUnit;->update_channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    const-string v2, "ro.build.version.incremental"

    .line 503
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/cubepilot/herelinksettings/AirUnit;->params:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v1, "full"

    :goto_0
    const-string v2, "/song-ota-OLDREPLACE-REPLACE.zip"

    const-string v3, "OLDREPLACE"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/cubepilot/herelinksettings/AirUnit;->airversion:Ljava/lang/String;

    .line 504
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "REPLACE"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBase64Impl()Lcom/tananaev/adblib/AdbBase64;
    .locals 1

    .line 432
    new-instance v0, Lorg/cubepilot/herelinksettings/AirUnit$2;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/AirUnit$2;-><init>()V

    return-object v0
.end method

.method private getMaxPWM()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 374
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x694

    return v0

    .line 377
    :cond_0
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "FunctionChannel"

    const-string v2, "MaxChannelValue"

    .line 378
    invoke-virtual {v0, v1, v2}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getMinPWM()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x16c

    return v0

    .line 367
    :cond_0
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    const-string v1, "FunctionChannel"

    const-string v2, "MinChannelValue"

    .line 368
    invoke-virtual {v0, v1, v2}, Lorg/ini4j/Ini;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$adb$7()V
    .locals 9

    const-string v0, "-s"

    const-string v1, "192.168.0.10"

    const-string v2, "adb"

    const-string v3, "AIRUNIT"

    .line 512
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "devices"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 513
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 517
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 515
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v4, "try conect"

    .line 520
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "connect"

    filled-new-array {v2, v5, v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 523
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    const-string v4, "try conect done"

    .line 524
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2

    .line 528
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 526
    :goto_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    :try_start_2
    const-string v4, "try root"

    .line 531
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "root"

    filled-new-array {v2, v0, v1, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 534
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    const-string v4, "try root done"

    .line 535
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_6

    :catch_4
    move-exception v4

    goto :goto_4

    :catch_5
    move-exception v4

    goto :goto_5

    .line 539
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 537
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    const-string v4, "JadbConnection"

    .line 542
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v4, Lse/vidstige/jadb/JadbConnection;

    const/16 v5, 0x13ae

    const-string v6, "localhost"

    invoke-direct {v4, v6, v5}, Lse/vidstige/jadb/JadbConnection;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x0

    :try_start_3
    const-string v6, "getHostVersion"

    .line 547
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {v4}, Lse/vidstige/jadb/JadbConnection;->getHostVersion()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lse/vidstige/jadb/JadbException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_a

    :catch_6
    move-exception v6

    goto :goto_7

    :catch_7
    move-exception v6

    goto :goto_8

    .line 552
    :goto_7
    invoke-virtual {v6}, Lse/vidstige/jadb/JadbException;->printStackTrace()V

    goto :goto_9

    .line 550
    :goto_8
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_9
    move-object v6, v5

    .line 554
    :goto_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    const-string v6, "connectToTcpDevice"

    .line 556
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-instance v6, Ljava/net/InetSocketAddress;

    const/16 v7, 0x15b3

    invoke-direct {v6, v1, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Lse/vidstige/jadb/JadbConnection;->connectToTcpDevice(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lse/vidstige/jadb/JadbException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lse/vidstige/jadb/ConnectionToRemoteDeviceException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_e

    :catch_8
    move-exception v6

    goto :goto_b

    :catch_9
    move-exception v6

    goto :goto_c

    :catch_a
    move-exception v6

    goto :goto_d

    .line 563
    :goto_b
    invoke-virtual {v6}, Lse/vidstige/jadb/ConnectionToRemoteDeviceException;->printStackTrace()V

    goto :goto_e

    .line 561
    :goto_c
    invoke-virtual {v6}, Lse/vidstige/jadb/JadbException;->printStackTrace()V

    goto :goto_e

    .line 559
    :goto_d
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    :try_start_5
    const-string v6, "getDevices"

    .line 567
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {v4}, Lse/vidstige/jadb/JadbConnection;->getDevices()Ljava/util/List;

    move-result-object v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lse/vidstige/jadb/JadbException; {:try_start_5 .. :try_end_5} :catch_b

    goto :goto_11

    :catch_b
    move-exception v4

    goto :goto_f

    :catch_c
    move-exception v4

    goto :goto_10

    .line 572
    :goto_f
    invoke-virtual {v4}, Lse/vidstige/jadb/JadbException;->printStackTrace()V

    goto :goto_11

    .line 570
    :goto_10
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_11
    if-eqz v5, :cond_1

    .line 575
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1e

    :cond_0
    const/4 v4, 0x0

    .line 580
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lse/vidstige/jadb/JadbDevice;

    .line 582
    :try_start_6
    invoke-virtual {v5}, Lse/vidstige/jadb/JadbDevice;->getState()Lse/vidstige/jadb/JadbDevice$State;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lse/vidstige/jadb/JadbException; {:try_start_6 .. :try_end_6} :catch_d

    goto :goto_14

    :catch_d
    move-exception v6

    goto :goto_12

    :catch_e
    move-exception v6

    goto :goto_13

    .line 586
    :goto_12
    invoke-virtual {v6}, Lse/vidstige/jadb/JadbException;->printStackTrace()V

    goto :goto_14

    .line 584
    :goto_13
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 588
    :goto_14
    invoke-virtual {v5}, Lse/vidstige/jadb/JadbDevice;->getSerial()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    const-string v6, "push"

    .line 592
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/AU.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Lse/vidstige/jadb/RemoteFile;

    const-string v8, "/data/system/AU.zip"

    invoke-direct {v7, v8}, Lse/vidstige/jadb/RemoteFile;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v5, v6, v7}, Lse/vidstige/jadb/JadbDevice;->push(Ljava/io/File;Lse/vidstige/jadb/RemoteFile;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Lse/vidstige/jadb/JadbException; {:try_start_7 .. :try_end_7} :catch_f

    goto :goto_17

    :catch_f
    move-exception v6

    goto :goto_15

    :catch_10
    move-exception v6

    goto :goto_16

    .line 599
    :goto_15
    invoke-virtual {v6}, Lse/vidstige/jadb/JadbException;->printStackTrace()V

    goto :goto_17

    .line 597
    :goto_16
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_17
    :try_start_8
    const-string v6, "try recovery cmd"

    .line 609
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "\"echo --update_package=/data/system/AU.zip > /cache/recovery/command\""

    new-array v4, v4, [Ljava/lang/String;

    .line 610
    invoke-virtual {v5, v6, v4}, Lse/vidstige/jadb/JadbDevice;->executeShell(Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    const-string v4, "try recovery cmd done"

    .line 611
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_11

    goto :goto_1a

    :catch_11
    move-exception v4

    goto :goto_18

    :catch_12
    move-exception v4

    goto :goto_19

    .line 615
    :goto_18
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    .line 613
    :goto_19
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_1a
    :try_start_9
    const-string v4, "try reboot"

    .line 619
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "reboot"

    const-string v6, "recovery"

    filled-new-array {v2, v0, v1, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    const-string v0, "try reboot done"

    .line 623
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_13

    goto :goto_1d

    :catch_13
    move-exception v0

    goto :goto_1b

    :catch_14
    move-exception v0

    goto :goto_1c

    .line 627
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d

    .line 625
    :goto_1c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1d
    const-string v0, "done"

    .line 630
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_1e
    const-string v0, "NO Devices"

    .line 576
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMinMaxPWM(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-static {}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getJoystickConfigPath()Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0, v1}, Lorg/ini4j/Ini;-><init>(Ljava/io/File;)V

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "FunctionChannel"

    const-string v3, "MinChannelValue"

    invoke-virtual {v0, v2, v3, p1}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 358
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "MaxChannelValue"

    invoke-virtual {v0, v2, p2, p1}, Lorg/ini4j/Ini;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->store(Ljava/io/File;)V

    return-void
.end method

.method public static setupCrypto(Ljava/lang/String;Ljava/lang/String;)Lcom/tananaev/adblib/AdbCrypto;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 451
    :try_start_0
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->getBase64Impl()Lcom/tananaev/adblib/AdbBase64;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lcom/tananaev/adblib/AdbCrypto;->loadAdbKeyPair(Lcom/tananaev/adblib/AdbBase64;Ljava/io/File;Ljava/io/File;)Lcom/tananaev/adblib/AdbCrypto;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-nez v1, :cond_1

    .line 466
    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->getBase64Impl()Lcom/tananaev/adblib/AdbBase64;

    move-result-object p1

    invoke-static {p1}, Lcom/tananaev/adblib/AdbCrypto;->generateAdbKeyPair(Lcom/tananaev/adblib/AdbBase64;)Lcom/tananaev/adblib/AdbCrypto;

    move-result-object v1

    .line 469
    invoke-virtual {v1, p0, v0}, Lcom/tananaev/adblib/AdbCrypto;->saveAdbKeyPair(Ljava/io/File;Ljava/io/File;)V

    .line 470
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Generated new keypair"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Loaded existing keypair"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private updateProductKeyFromFile()V
    .locals 3

    .line 264
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/pkey.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v1, Ljava/io/File;

    const-string v2, "/persist/pkey.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 271
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->productKey:Ljava/lang/String;

    .line 272
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 282
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cubepilot/herelinksettings/AirUnit;->productKey:Ljava/lang/String;

    .line 283
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public adb()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lse/vidstige/jadb/JadbException;
        }
    .end annotation

    const-string v0, "AIRUNIT"

    const-string v1, "adb"

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$1_st4WkZ_CpiuVj-5WCagixELfI;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$1_st4WkZ_CpiuVj-5WCagixELfI;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 631
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic lambda$onStart$0$AirUnit(Landroid/view/View;)V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->onCreateDialog()Landroid/app/Dialog;

    .line 113
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->file_url()Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance v0, Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 116
    invoke-virtual {v0, v1}, Lorg/cubepilot/herelinksettings/AirUnit$DownloadFileFromURL;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$onStart$1$AirUnit(Landroid/view/View;)V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->onCreateDialog()Landroid/app/Dialog;

    .line 122
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;

    invoke-direct {p1, p0}, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$ADBPushFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$onStart$2$AirUnit(Landroid/view/View;)V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->onCreateDialog()Landroid/app/Dialog;

    .line 128
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;

    invoke-direct {p1, p0}, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$doRemoteUpdate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$onStart$3$AirUnit(Landroid/view/View;)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->onCreateDialog()Landroid/app/Dialog;

    .line 133
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;

    invoke-direct {p1, p0}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    .line 134
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->setContext(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->setActivity(Landroidx/fragment/app/FragmentActivity;)V

    const-string v0, "org.cubepilot.herelinksettings"

    .line 136
    invoke-virtual {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->setPackageName(Ljava/lang/String;)V

    const-string v0, "https://herelinkfw.cubepilot.org/apps/HereLinkSettings.apk"

    .line 137
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$onStart$4$AirUnit(Landroid/view/View;)V
    .locals 1

    .line 141
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->onCreateDialog()Landroid/app/Dialog;

    .line 142
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;

    invoke-direct {p1, p0}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    .line 143
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->setContext(Landroid/content/Context;)V

    .line 144
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->setActivity(Landroidx/fragment/app/FragmentActivity;)V

    const-string v0, "org.cubepilot.otaupdater"

    .line 145
    invoke-virtual {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->setPackageName(Ljava/lang/String;)V

    const-string v0, "https://herelinkfw.cubepilot.org/apps/OTAUpdater.apk"

    .line 146
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit$UpdateApp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$onStart$5$AirUnit(Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 5

    .line 158
    :try_start_0
    new-instance p2, Ljava/net/DatagramSocket;

    invoke-direct {p2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 160
    invoke-virtual {p2}, Ljava/net/SocketException;->printStackTrace()V

    const/4 p2, 0x0

    .line 163
    :goto_0
    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0}, Ljava/io/PipedInputStream;-><init>()V

    .line 164
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    .line 166
    new-instance v2, Ljava/io/PipedInputStream;

    invoke-direct {v2}, Ljava/io/PipedInputStream;-><init>()V

    .line 167
    new-instance v3, Ljava/io/PipedOutputStream;

    invoke-direct {v3}, Ljava/io/PipedOutputStream;-><init>()V

    .line 170
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 171
    invoke-virtual {v1, v2}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 173
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    :goto_1
    invoke-static {v0, v1}, Lio/dronefleet/mavlink/MavlinkConnection;->create(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/dronefleet/mavlink/MavlinkConnection;

    move-result-object v0

    .line 181
    :try_start_2
    invoke-static {}, Lio/dronefleet/mavlink/common/CommandLong;->builder()Lio/dronefleet/mavlink/common/CommandLong$Builder;

    move-result-object v1

    sget-object v3, Lio/dronefleet/mavlink/common/MavCmd;->USER_1:Lio/dronefleet/mavlink/common/MavCmd;

    .line 182
    invoke-virtual {v1, v3}, Lio/dronefleet/mavlink/common/CommandLong$Builder;->command(Lio/dronefleet/mavlink/common/MavCmd;)Lio/dronefleet/mavlink/common/CommandLong$Builder;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 183
    invoke-virtual {v1, v3}, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param1(F)Lio/dronefleet/mavlink/common/CommandLong$Builder;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lio/dronefleet/mavlink/common/CommandLong$Builder;->param2(F)Lio/dronefleet/mavlink/common/CommandLong$Builder;

    move-result-object p1

    const/16 v1, 0x64

    .line 185
    invoke-virtual {p1, v1}, Lio/dronefleet/mavlink/common/CommandLong$Builder;->targetComponent(I)Lio/dronefleet/mavlink/common/CommandLong$Builder;

    move-result-object p1

    const/16 v3, 0x2b

    .line 186
    invoke-virtual {p1, v3}, Lio/dronefleet/mavlink/common/CommandLong$Builder;->targetSystem(I)Lio/dronefleet/mavlink/common/CommandLong$Builder;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lio/dronefleet/mavlink/common/CommandLong$Builder;->build()Lio/dronefleet/mavlink/common/CommandLong;

    move-result-object p1

    .line 190
    invoke-virtual {v0, v3, v1, p1}, Lio/dronefleet/mavlink/MavlinkConnection;->send2(IILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const/16 p1, 0x800

    :try_start_3
    new-array p1, p1, [B

    .line 197
    :goto_3
    invoke-virtual {v2}, Ljava/io/PipedInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    invoke-virtual {v2, p1}, Ljava/io/PipedInputStream;->read([B)I

    move-result v0

    .line 199
    new-instance v1, Ljava/net/DatagramPacket;

    const-string v3, "127.0.0.1"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x38d9

    invoke-direct {v1, p1, v0, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 200
    invoke-virtual {p2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const-wide/16 p1, 0x3e8

    .line 207
    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 211
    :goto_4
    new-instance p1, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;

    invoke-direct {p1, p0}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string p2, ""

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$onStart$6$AirUnit(Landroid/view/View;)V
    .locals 1

    .line 215
    check-cast p1, Landroid/widget/CheckBox;

    .line 216
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc8

    const/16 v0, 0x708

    .line 218
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit;->setMinMaxPWM(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x16c

    const/16 v0, 0x694

    .line 224
    :try_start_1
    invoke-direct {p0, p1, v0}, Lorg/cubepilot/herelinksettings/AirUnit;->setMinMaxPWM(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method protected onCreateDialog()Landroid/app/Dialog;
    .locals 2

    .line 637
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->pDialog:Landroid/app/ProgressDialog;

    .line 638
    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->pDialog:Landroid/app/ProgressDialog;

    const-string v1, "Downloading file. Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 639
    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 640
    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->pDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 641
    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 642
    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 643
    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c001f

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 383
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 384
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->onCreateDialog()Landroid/app/Dialog;

    .line 385
    new-instance v0, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cubepilot/herelinksettings/AirUnit$ADBGetInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cubepilot/herelinksettings/AirUnit$1;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/AirUnit$1;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 427
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 108
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 109
    sget-object v0, Lorg/cubepilot/herelinksettings/MainActivity;->mainActivity:Lorg/cubepilot/herelinksettings/MainActivity;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 111
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$b8OE-RdxiBeQJWwo834FtIWSvdw;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$b8OE-RdxiBeQJWwo834FtIWSvdw;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 120
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$UAVXxAlFf1ag0FOneDg4jG-Fm_g;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$UAVXxAlFf1ag0FOneDg4jG-Fm_g;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$8RzP25BV6Vpe_8-57fkNg0Qkv_g;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$8RzP25BV6Vpe_8-57fkNg0Qkv_g;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$iVCi_2KYKCG2upSY3TS7ZTAtjRw;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$iVCi_2KYKCG2upSY3TS7ZTAtjRw;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$cI9icRUdqX9duqjR-6tCQSj9KxU;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$cI9icRUdqX9duqjR-6tCQSj9KxU;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "57600"

    const-string v1, "115200"

    const-string v2, "921600"

    .line 149
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0066

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09019c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 155
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$eefJTvKHQbMZsGJeS2Rh5RciMTQ;

    invoke-direct {v2, p0, v0}, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$eefJTvKHQbMZsGJeS2Rh5RciMTQ;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$wVp8Re7-u-tL0O9HRaFmNIDVSo8;

    invoke-direct {v2, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$AirUnit$wVp8Re7-u-tL0O9HRaFmNIDVSo8;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :try_start_0
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getMinPWM()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 233
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method updatecheck_url()Ljava/lang/String;
    .locals 4

    .line 490
    :try_start_0
    sget-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->update_channel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 491
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/AirUnit;->updateProductKeyFromFile()V

    .line 492
    new-instance v0, Lorg/cubepilot/herelinksettings/AirUnit$CheckChannel;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/AirUnit$CheckChannel;-><init>(Lorg/cubepilot/herelinksettings/AirUnit;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https://hlupd.cubepilot.org/channel"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/cubepilot/herelinksettings/AirUnit;->productKey:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/cubepilot/herelinksettings/AirUnit$CheckChannel;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cubepilot/herelinksettings/AirUnit;->update_channel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://herelinkfw.cubepilot.org/airunit/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/cubepilot/herelinksettings/AirUnit;->update_channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/airunit_last_release_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirUnit"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "error update check"

    return-object v0
.end method
