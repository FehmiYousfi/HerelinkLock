.class public final Lio/dronefleet/mavlink/common/WheelDistance$Builder;
.super Ljava/lang/Object;
.source "WheelDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/WheelDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private count:I

.field private distance:[D

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/WheelDistance;
    .locals 5

    .line 182
    new-instance v0, Lio/dronefleet/mavlink/common/WheelDistance;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/WheelDistance$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/WheelDistance$Builder;->count:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/WheelDistance$Builder;->distance:[D

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/common/WheelDistance;-><init>(Ljava/math/BigInteger;I[DLio/dronefleet/mavlink/common/WheelDistance$1;)V

    return-object v0
.end method

.method public final count(I)Lio/dronefleet/mavlink/common/WheelDistance$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of wheels reported."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 158
    iput p1, p0, Lio/dronefleet/mavlink/common/WheelDistance$Builder;->count:I

    return-object p0
.end method

.method public final distance([D)Lio/dronefleet/mavlink/common/WheelDistance$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Distance reported by individual wheel\n                encoders. Forward rotations increase values, reverse rotations decrease them. Not\n                all wheels will necessarily have wheel encoders; the mapping of encoders to wheel\n                positions must be agreed/understood by the endpoints."
        position = 0x3
        unitSize = 0x8
    .end annotation

    .line 177
    iput-object p1, p0, Lio/dronefleet/mavlink/common/WheelDistance$Builder;->distance:[D

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/WheelDistance$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (synced to UNIX time or\n                since system boot)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 145
    iput-object p1, p0, Lio/dronefleet/mavlink/common/WheelDistance$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
