.class public final Lio/dronefleet/mavlink/common/RawPressure$Builder;
.super Ljava/lang/Object;
.source "RawPressure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/RawPressure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private pressAbs:I

.field private pressDiff1:I

.field private pressDiff2:I

.field private temperature:I

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/RawPressure;
    .locals 8

    .line 260
    new-instance v7, Lio/dronefleet/mavlink/common/RawPressure;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/RawPressure$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v2, p0, Lio/dronefleet/mavlink/common/RawPressure$Builder;->pressAbs:I

    iget v3, p0, Lio/dronefleet/mavlink/common/RawPressure$Builder;->pressDiff1:I

    iget v4, p0, Lio/dronefleet/mavlink/common/RawPressure$Builder;->pressDiff2:I

    iget v5, p0, Lio/dronefleet/mavlink/common/RawPressure$Builder;->temperature:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/RawPressure;-><init>(Ljava/math/BigInteger;IIIILio/dronefleet/mavlink/common/RawPressure$1;)V

    return-object v7
.end method

.method public final pressAbs(I)Lio/dronefleet/mavlink/common/RawPressure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Absolute pressure (raw)"
        position = 0x2
        signed = true
        unitSize = 0x2
    .end annotation

    .line 211
    iput p1, p0, Lio/dronefleet/mavlink/common/RawPressure$Builder;->pressAbs:I

    return-object p0
.end method

.method public final pressDiff1(I)Lio/dronefleet/mavlink/common/RawPressure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Differential pressure 1 (raw, 0 if\n                nonexistent)"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 226
    iput p1, p0, Lio/dronefleet/mavlink/common/RawPressure$Builder;->pressDiff1:I

    return-object p0
.end method

.method public final pressDiff2(I)Lio/dronefleet/mavlink/common/RawPressure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Differential pressure 2 (raw, 0 if\n                nonexistent)"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 241
    iput p1, p0, Lio/dronefleet/mavlink/common/RawPressure$Builder;->pressDiff2:I

    return-object p0
.end method

.method public final temperature(I)Lio/dronefleet/mavlink/common/RawPressure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Raw Temperature measurement (raw)"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 255
    iput p1, p0, Lio/dronefleet/mavlink/common/RawPressure$Builder;->temperature:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/RawPressure$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 197
    iput-object p1, p0, Lio/dronefleet/mavlink/common/RawPressure$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
