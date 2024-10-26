.class public final Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;
.super Ljava/lang/Object;
.source "WifiConfigAp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/WifiConfigAp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private password:Ljava/lang/String;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/WifiConfigAp;
    .locals 4

    .line 145
    new-instance v0, Lio/dronefleet/mavlink/common/WifiConfigAp;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;->ssid:Ljava/lang/String;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;->password:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/common/WifiConfigAp;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/dronefleet/mavlink/common/WifiConfigAp$1;)V

    return-object v0
.end method

.method public final password(Ljava/lang/String;)Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x40
        description = "Password. Blank for an open AP. MD5 hash when\n                message is sent back as a response."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 140
    iput-object p1, p0, Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final ssid(Ljava/lang/String;)Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Name of Wi-Fi network (SSID). Blank to leave it\n                unchanged when setting. Current SSID when sent back as a response."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 125
    iput-object p1, p0, Lio/dronefleet/mavlink/common/WifiConfigAp$Builder;->ssid:Ljava/lang/String;

    return-object p0
.end method
