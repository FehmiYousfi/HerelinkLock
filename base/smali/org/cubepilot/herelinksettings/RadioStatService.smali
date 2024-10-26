.class public Lorg/cubepilot/herelinksettings/RadioStatService;
.super Landroid/app/Service;
.source "RadioStatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;,
        Lorg/cubepilot/herelinksettings/RadioStatService$LocalBinder;
    }
.end annotation


# static fields
.field public static final EVENT_CAL_STATE_RCVD:I = 0x9

.field public static final EVENT_FLY_DISTANCE_UPDATE:I = 0x7

.field public static final EVENT_FREQ_NEGOTIATION_FAILED:I = 0x2

.field public static final EVENT_FREQ_NEGOTIATION_STARTED:I = 0x3

.field public static final EVENT_FREQ_NEGOTIATION_SUCCESS:I = 0x1

.field public static final EVENT_RSRP_AIR_M_UPDATE:I = 0xb

.field public static final EVENT_RSRP_AIR_S_UPDATE:I = 0xa

.field public static final EVENT_RSRP_GCS_M_UPDATE:I = 0x6

.field public static final EVENT_RSRP_GCS_S_UPDATE:I = 0x5

.field public static final EVENT_UL_BW_UPDATE:I = 0x8

.field public static final EVENT_UL_RATE_UPDATE:I = 0x4

.field public static HerelinkNetwork:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "RadioStatService"

.field public static final NOTIFICATION_ID:I = 0x378

.field private static final SERVER_NAME_D2D_INFO:Ljava/lang/String; = "/tmp/qgccmd"

.field public static final ServiceLocalEvent:Ljava/lang/String; = "RadioStatService.ServiceLocalEvent"

.field public static final ServiceLocalEventData:Ljava/lang/String; = "data"

.field public static lastSendCmdStr:Ljava/lang/String; = ""

.field public static final mavlinkServer:Lorg/cubepilot/herelinksettings/MavlinkServer;


# instance fields
.field private final CHANNEL_ID:Ljava/lang/String;

.field private final SOCKET_NAME_D2D_INFO:Ljava/lang/String;

.field private final binder:Landroid/os/IBinder;

.field private broadcastreceiver:Landroid/content/BroadcastReceiver;

.field builder:Landroidx/core/app/NotificationCompat$Builder;

.field public calibrated:I

.field public fly_distance:Ljava/lang/String;

.field private initdone:Z

.field lastUIID:I

.field private localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field localServer:I

.field private mContext:Landroid/content/Context;

.field msg:[B

.field notificationId:I

.field notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field notificationsecond:I

.field notifyTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

.field private nsdManager:Landroid/net/nsd/NsdManager;

.field public radio_stat:I

.field public rsrp_gcs_m:Ljava/lang/String;

.field public rsrp_gcs_s:Ljava/lang/String;

.field public rsrp_uav_m:Ljava/lang/String;

.field public rsrp_uav_s:Ljava/lang/String;

.field public signal_strength_m:I

.field public signal_strength_s:I

.field public signal_strength_um:I

.field public signal_strength_us:I

.field public srv_stat:I

.field private ui:Lorg/cubepilot/herelinksettings/RadioSettings;

.field public ul_bw:Ljava/lang/String;

.field public ul_rate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 85
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/RadioStatService;->HerelinkNetwork:Ljava/util/LinkedList;

    .line 106
    new-instance v0, Lorg/cubepilot/herelinksettings/MavlinkServer;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/MavlinkServer;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/RadioStatService;->mavlinkServer:Lorg/cubepilot/herelinksettings/MavlinkServer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->localServer:I

    const-string v1, "/tmp/d2dinfo"

    .line 47
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->SOCKET_NAME_D2D_INFO:Ljava/lang/String;

    const-string v1, "radio_status"

    .line 49
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->CHANNEL_ID:Ljava/lang/String;

    const-string v1, ""

    .line 62
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ul_rate:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_gcs_s:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_gcs_m:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_uav_s:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_uav_m:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->fly_distance:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ul_bw:Ljava/lang/String;

    const/16 v1, -0x64

    .line 69
    iput v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->signal_strength_m:I

    .line 70
    iput v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->signal_strength_s:I

    .line 71
    iput v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->signal_strength_um:I

    .line 72
    iput v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->signal_strength_us:I

    .line 77
    iput v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->calibrated:I

    .line 79
    new-instance v0, Lorg/cubepilot/herelinksettings/RadioStatService$LocalBinder;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/RadioStatService$LocalBinder;-><init>(Lorg/cubepilot/herelinksettings/RadioStatService;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->binder:Landroid/os/IBinder;

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->lastUIID:I

    const/4 v0, 0x0

    .line 595
    iput v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notificationsecond:I

    const/16 v0, 0x64

    new-array v0, v0, [B

    .line 597
    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->msg:[B

    return-void
.end method

.method static synthetic access$000(Lorg/cubepilot/herelinksettings/RadioStatService;)Landroid/net/nsd/NsdManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->nsdManager:Landroid/net/nsd/NsdManager;

    return-object p0
.end method

.method static synthetic access$100(Lorg/cubepilot/herelinksettings/RadioStatService;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->handleMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/cubepilot/herelinksettings/RadioStatService;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-object p0
.end method

.method public static aquireMulticastLock(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 1

    const-string v0, "wifi"

    .line 382
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 383
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p0

    const/4 p1, 0x1

    .line 384
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 385
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    return-object p0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 406
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 407
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 409
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private handleMessage(Ljava/lang/String;)V
    .locals 10

    const-string v0, " "

    .line 468
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    const/4 v1, 0x0

    .line 472
    aget-object v2, v0, v1

    const-string v3, "QGC_CMD_SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0xa

    const-string v4, "QGCFREQNEG"

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    .line 473
    sget-object p1, Lorg/cubepilot/herelinksettings/RadioStatService;->lastSendCmdStr:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz p1, :cond_11

    .line 474
    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 476
    :cond_0
    aget-object v2, v0, v1

    const-string v8, "QGC_CMD_FAIL"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz v2, :cond_1

    .line 477
    sget-object p1, Lorg/cubepilot/herelinksettings/RadioStatService;->lastSendCmdStr:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 478
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 480
    :cond_1
    aget-object v2, v0, v1

    const-string v4, "UL_RATE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, " kbps"

    if-eqz v2, :cond_2

    .line 481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ul_rate:Ljava/lang/String;

    .line 482
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz p1, :cond_11

    .line 483
    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 485
    :cond_2
    aget-object v2, v0, v1

    const-string v8, "RSRP_GCS_S"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v8, " dbm"

    if-eqz v2, :cond_3

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v0, v7

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_gcs_s:Ljava/lang/String;

    .line 487
    aget-object p1, v0, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->signal_strength_s:I

    .line 488
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz p1, :cond_11

    .line 489
    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 491
    :cond_3
    aget-object v2, v0, v1

    const-string v9, "RSRP_GCS_M"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v0, v7

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_gcs_m:Ljava/lang/String;

    .line 493
    aget-object p1, v0, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->signal_strength_m:I

    .line 494
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz p1, :cond_11

    .line 495
    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 497
    :cond_4
    aget-object v2, v0, v1

    const-string v9, "RSRP_UAV_S"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v0, v7

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_uav_s:Ljava/lang/String;

    .line 499
    aget-object p1, v0, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->signal_strength_us:I

    .line 500
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz p1, :cond_11

    .line 501
    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 503
    :cond_5
    aget-object v2, v0, v1

    const-string v9, "RSRP_UAV_M"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v0, v7

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_uav_m:Ljava/lang/String;

    .line 505
    aget-object p1, v0, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->signal_strength_um:I

    .line 506
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz p1, :cond_11

    .line 507
    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 509
    :cond_6
    aget-object v2, v0, v1

    const-string v8, "FLY_DISTANCE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " m"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->fly_distance:Ljava/lang/String;

    .line 511
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz p1, :cond_11

    .line 512
    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 514
    :cond_7
    aget-object v2, v0, v1

    const-string v8, "UL_BW"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ul_bw:Ljava/lang/String;

    .line 516
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz p1, :cond_8

    .line 517
    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 521
    :cond_8
    iget p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notificationsecond:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v5

    long-to-int v0, v0

    if-eq p1, v0, :cond_11

    .line 524
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v0, "herelinksettings::MyWakelockTag"

    .line 525
    invoke-virtual {p1, v7, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/32 v0, 0xea60

    .line 528
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_1

    .line 530
    :cond_9
    aget-object v2, v0, v1

    const-string v4, "CALIBRATE_STAT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 531
    aget-object p1, v0, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_a

    .line 532
    iput v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->calibrated:I

    goto :goto_0

    .line 534
    :cond_a
    iput v7, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->calibrated:I

    .line 536
    :goto_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz p1, :cond_11

    .line 537
    iget-object p1, p1, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 539
    :cond_b
    aget-object v2, v0, v1

    const-string v4, "TX_PWR_CTRL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_1

    .line 541
    :cond_c
    aget-object v2, v0, v1

    const-string v4, "TX_ANT_BITMAP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_1

    .line 542
    :cond_d
    aget-object v2, v0, v1

    const-string v4, "SNR_LIST_UPDATED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_1

    .line 543
    :cond_e
    aget-object v2, v0, v1

    const-string v4, "RADIO_STAT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 544
    aget-object p1, v0, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->radio_stat:I

    goto :goto_1

    .line 545
    :cond_f
    aget-object v1, v0, v1

    const-string v2, "SRV_STAT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 546
    aget-object p1, v0, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->srv_stat:I

    goto :goto_1

    .line 548
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unused MSG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RadioStatService"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_11
    :goto_1
    iget p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notificationsecond:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v5

    long-to-int v0, v0

    if-eq p1, v0, :cond_1a

    .line 552
    iget p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notificationsecond:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_12

    .line 553
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioStatService;->requestPairingState()V

    .line 555
    :cond_12
    iget p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->calibrated:I

    const/4 v0, -0x1

    const v1, 0x7f1000d1

    if-ne p1, v0, :cond_13

    .line 556
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\tUnknown"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_13
    if-nez p1, :cond_14

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\tUnpaired"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 560
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\tPaired"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 562
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f100030

    invoke-virtual {p0, v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_gcs_m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", S: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_gcs_s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nAir signal strength:\tM: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_uav_m:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->rsrp_uav_s:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\t"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ul_rate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f1000e7

    invoke-virtual {p0, v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ul_bw:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100052

    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->fly_distance:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 567
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notifyTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 568
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notifyTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 569
    iget p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->signal_strength_m:I

    iget v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->signal_strength_s:I

    invoke-static {p1, v0}, Ljava/lang/Integer;->max(II)I

    move-result p1

    const/16 v0, -0x46

    if-le p1, v0, :cond_15

    .line 571
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f080080

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    :cond_15
    const/16 v0, -0x55

    if-le p1, v0, :cond_16

    .line 573
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f08007f

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    :cond_16
    const/16 v0, -0x5f

    if-le p1, v0, :cond_17

    .line 575
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f08007e

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    :cond_17
    const/16 v0, -0x69

    if-le p1, v0, :cond_18

    .line 577
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f08007d

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    :cond_18
    const/16 v0, -0x78

    if-le p1, v0, :cond_19

    .line 579
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f08007c

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_3

    .line 581
    :cond_19
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f080081

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 584
    :goto_3
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    const/16 v0, 0x378

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 587
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v5

    long-to-int p1, v0

    iput p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notificationsecond:I

    return-void
.end method

.method private init()V
    .locals 4

    const-string v0, "RadioStatService"

    const-string v1, "Radio Service IN"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/tmp/d2dinfo"

    .line 110
    invoke-virtual {p0, v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->startSocketServer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->localServer:I

    .line 112
    iget v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->localServer:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const-string v1, "Failed to create localsocketserver"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Failed to start service"

    .line 114
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Radio Service started: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->localServer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/cubepilot/herelinksettings/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 127
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "radio_status"

    invoke-direct {v1, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f080082

    .line 128
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v3, "Radio Status"

    .line 129
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 133
    new-instance v0, Lorg/cubepilot/herelinksettings/util/VerifyCheck;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/util/VerifyCheck;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$RadioStatService$F8irwMR-SmA17IX7HkkHp2m9UwQ;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$RadioStatService$F8irwMR-SmA17IX7HkkHp2m9UwQ;-><init>(Lorg/cubepilot/herelinksettings/RadioStatService;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/cubepilot/herelinksettings/util/VerifyCheck;->perform(Lorg/cubepilot/herelinksettings/util/VerifyCheck$Callback;Landroid/os/Handler;)V

    .line 140
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 143
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    const/16 v1, 0x378

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 144
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->notifyTextStyle:Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 145
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;

    invoke-direct {v1, p0}, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;-><init>(Lorg/cubepilot/herelinksettings/RadioStatService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioStatService;->registerService()V

    .line 150
    new-instance v0, Lorg/cubepilot/herelinksettings/RadioStatService$1;

    invoke-direct {v0, p0}, Lorg/cubepilot/herelinksettings/RadioStatService$1;-><init>(Lorg/cubepilot/herelinksettings/RadioStatService;)V

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->broadcastreceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->addFilters(Landroid/content/IntentFilter;)V

    .line 196
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->broadcastreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    sget-object v0, Lorg/cubepilot/herelinksettings/RadioStatService;->mavlinkServer:Lorg/cubepilot/herelinksettings/MavlinkServer;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/MavlinkServer;->run()V

    return-void
.end method

.method public static sendCmd(Ljava/lang/String;)V
    .locals 4

    .line 646
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 651
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 653
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 654
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 655
    invoke-static {p0, v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->sendCmd(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static sendCmd(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending String: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Bytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioStatService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 662
    :try_start_0
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "/tmp/qgccmd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const/16 v1, 0x64

    .line 663
    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSendBufferSize(I)V

    .line 664
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 665
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 666
    sput-object p0, Lorg/cubepilot/herelinksettings/RadioStatService;->lastSendCmdStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 668
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 671
    :try_start_3
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 673
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 671
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 673
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 675
    :goto_2
    throw p0
.end method

.method public static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "RadioStatService"

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 419
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 420
    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    const-string p0, "android.os.SystemProperties"

    .line 424
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "set"

    .line 425
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 427
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAuthCfg()I
    .locals 1

    const-string v0, "persist.sys.d2d.auth.cfg"

    .line 626
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVideoSharing()Z
    .locals 2

    const-string v0, "persist.fpv.ext.disp"

    .line 432
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public initializeDiscoveryListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 293
    new-instance v0, Lorg/cubepilot/herelinksettings/RadioStatService$4;

    invoke-direct {v0, p0, p2, p1}, Lorg/cubepilot/herelinksettings/RadioStatService$4;-><init>(Lorg/cubepilot/herelinksettings/RadioStatService;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->nsdManager:Landroid/net/nsd/NsdManager;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    return-void
.end method

.method public initializeResolveListener(Ljava/lang/String;)Landroid/net/nsd/NsdManager$ResolveListener;
    .locals 1

    .line 352
    new-instance v0, Lorg/cubepilot/herelinksettings/RadioStatService$5;

    invoke-direct {v0, p0, p1}, Lorg/cubepilot/herelinksettings/RadioStatService$5;-><init>(Lorg/cubepilot/herelinksettings/RadioStatService;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic lambda$init$0$RadioStatService(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "org.cubepilot.otaupdater"

    const-string v2, "org.cubepilot.otaupdater.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 446
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 397
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/RadioStatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->mContext:Landroid/content/Context;

    .line 398
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/RadioStatService;->init()V

    .line 399
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 460
    iget v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->localServer:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const-string v1, "/tmp/d2dinfo"

    .line 461
    invoke-virtual {p0, v0, v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->stopSocketServer(ILjava/lang/String;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->broadcastreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 464
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 391
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p1, 0x1

    return p1
.end method

.method public native readSocket(I[B)Z
.end method

.method public registerService()V
    .locals 6

    .line 203
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HereLink-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ro.boot.serialno"

    invoke-static {v3}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    const-string v1, "_mavlink._udp"

    .line 205
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    const/16 v1, 0x38d8

    .line 206
    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 208
    new-instance v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v1}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/cubepilot/herelinksettings/RadioStatService;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    const-string v2, "_rtsp._tcp"

    .line 210
    invoke-virtual {v1, v2}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    const/16 v2, 0x216a

    .line 211
    invoke-virtual {v1, v2}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 213
    new-instance v2, Lorg/cubepilot/herelinksettings/RadioStatService$2;

    invoke-direct {v2, p0}, Lorg/cubepilot/herelinksettings/RadioStatService$2;-><init>(Lorg/cubepilot/herelinksettings/RadioStatService;)V

    .line 244
    new-instance v3, Lorg/cubepilot/herelinksettings/RadioStatService$3;

    invoke-direct {v3, p0}, Lorg/cubepilot/herelinksettings/RadioStatService$3;-><init>(Lorg/cubepilot/herelinksettings/RadioStatService;)V

    .line 275
    iget-object v4, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->mContext:Landroid/content/Context;

    const-string v5, "RadioStatService"

    invoke-static {v4, v5}, Lorg/cubepilot/herelinksettings/RadioStatService;->aquireMulticastLock(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    .line 277
    iget-object v4, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->mContext:Landroid/content/Context;

    const-string v5, "servicediscovery"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/nsd/NsdManager;

    iput-object v4, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->nsdManager:Landroid/net/nsd/NsdManager;

    .line 279
    iget-object v4, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->nsdManager:Landroid/net/nsd/NsdManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5, v2}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 282
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->nsdManager:Landroid/net/nsd/NsdManager;

    invoke-virtual {v0, v1, v5, v3}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    const-string v0, "HereLink"

    const-string v1, "_mavlink._udp."

    .line 285
    invoke-virtual {p0, v0, v1}, Lorg/cubepilot/herelinksettings/RadioStatService;->initializeDiscoveryListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestFreqNegotiation()V
    .locals 2

    const-string v0, "QGCFREQNEG"

    .line 619
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->sendCmd(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, v0, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public requestPairingState()V
    .locals 1

    const-string v0, "QGCCLBRSTATE"

    .line 638
    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->sendCmd(Ljava/lang/String;)V

    return-void
.end method

.method public setActivity(ILorg/cubepilot/herelinksettings/RadioSettings;)I
    .locals 1

    .line 450
    iget v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->lastUIID:I

    if-eq p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 453
    :cond_0
    iget p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->lastUIID:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->lastUIID:I

    .line 454
    iput-object p2, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->ui:Lorg/cubepilot/herelinksettings/RadioSettings;

    .line 455
    iget p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService;->lastUIID:I

    return p1
.end method

.method public setRadioCountry(I)V
    .locals 2

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QGCRFAUTHCFG:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->sendCmd(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoSharing(Z)V
    .locals 1

    const-string v0, "persist.fpv.ext.disp"

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 631
    invoke-static {v0, p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 633
    invoke-static {v0, p1}, Lorg/cubepilot/herelinksettings/RadioStatService;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public native startSocketServer(Ljava/lang/String;)I
.end method

.method public native stopSocketServer(ILjava/lang/String;)V
.end method
