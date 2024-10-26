.class public final Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;
.super Ljava/lang/Object;
.source "AoaSsa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aoa:F

.field private ssa:F

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aoa(F)Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angle of Attack."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 152
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;->aoa:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;
    .locals 5

    .line 170
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;->aoa:F

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;->ssa:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa;-><init>(Ljava/math/BigInteger;FFLio/dronefleet/mavlink/ardupilotmega/AoaSsa$1;)V

    return-object v0
.end method

.method public final ssa(F)Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Side Slip Angle."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 165
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;->ssa:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (since boot or Unix\n                epoch)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 139
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AoaSsa$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
