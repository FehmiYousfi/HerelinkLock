.class public final Lio/dronefleet/mavlink/common/DebugVect$Builder;
.super Ljava/lang/Object;
.source "DebugVect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/DebugVect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private timeUsec:Ljava/math/BigInteger;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/DebugVect;
    .locals 8

    .line 246
    new-instance v7, Lio/dronefleet/mavlink/common/DebugVect;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/DebugVect$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/DebugVect$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v3, p0, Lio/dronefleet/mavlink/common/DebugVect$Builder;->x:F

    iget v4, p0, Lio/dronefleet/mavlink/common/DebugVect$Builder;->y:F

    iget v5, p0, Lio/dronefleet/mavlink/common/DebugVect$Builder;->z:F

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/DebugVect;-><init>(Ljava/lang/String;Ljava/math/BigInteger;FFFLio/dronefleet/mavlink/common/DebugVect$1;)V

    return-object v7
.end method

.method public final name(Ljava/lang/String;)Lio/dronefleet/mavlink/common/DebugVect$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa
        description = "Name"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 186
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DebugVect$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/DebugVect$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 202
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DebugVect$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final x(F)Lio/dronefleet/mavlink/common/DebugVect$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "x"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 215
    iput p1, p0, Lio/dronefleet/mavlink/common/DebugVect$Builder;->x:F

    return-object p0
.end method

.method public final y(F)Lio/dronefleet/mavlink/common/DebugVect$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "y"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 228
    iput p1, p0, Lio/dronefleet/mavlink/common/DebugVect$Builder;->y:F

    return-object p0
.end method

.method public final z(F)Lio/dronefleet/mavlink/common/DebugVect$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "z"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 241
    iput p1, p0, Lio/dronefleet/mavlink/common/DebugVect$Builder;->z:F

    return-object p0
.end method
