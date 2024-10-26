.class public final Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;
.super Ljava/lang/Object;
.source "DebugFloatArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/DebugFloatArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private arrayId:I

.field private data:[F

.field private name:Ljava/lang/String;

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final arrayId(I)Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Unique ID used to discriminate\n                between arrays"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 204
    iput p1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;->arrayId:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/DebugFloatArray;
    .locals 7

    .line 224
    new-instance v6, Lio/dronefleet/mavlink/common/DebugFloatArray;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;->timeUsec:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;->name:Ljava/lang/String;

    iget v3, p0, Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;->arrayId:I

    iget-object v4, p0, Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;->data:[F

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/DebugFloatArray;-><init>(Ljava/math/BigInteger;Ljava/lang/String;I[FLio/dronefleet/mavlink/common/DebugFloatArray$1;)V

    return-object v6
.end method

.method public final data([F)Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3a
        description = "data"
        extension = true
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 219
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;->data:[F

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa
        description = "Name, for human-friendly display in a Ground Control\n                Station"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 190
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 175
    iput-object p1, p0, Lio/dronefleet/mavlink/common/DebugFloatArray$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
