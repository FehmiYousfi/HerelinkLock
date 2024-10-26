.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration$Builder;
.super Ljava/lang/Object;
.source "UavionixAdsbOutCfgRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private registration:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;
    .locals 3

    .line 103
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration$Builder;->registration:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration;-><init>(Ljava/lang/String;Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration$1;)V

    return-object v0
.end method

.method public final registration(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x9
        description = "Aircraft Registration (ASCII string A-Z, 0-9\n                only), e.g. \"N8644B \". Trailing spaces (0x20) only. This is null-terminated."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 98
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutCfgRegistration$Builder;->registration:Ljava/lang/String;

    return-object p0
.end method
