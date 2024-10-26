.class public final Lio/dronefleet/mavlink/common/SystemTime$Builder;
.super Ljava/lang/Object;
.source "SystemTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SystemTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private timeBootMs:J

.field private timeUnixUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/SystemTime;
    .locals 5

    .line 137
    new-instance v0, Lio/dronefleet/mavlink/common/SystemTime;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SystemTime$Builder;->timeUnixUsec:Ljava/math/BigInteger;

    iget-wide v2, p0, Lio/dronefleet/mavlink/common/SystemTime$Builder;->timeBootMs:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/common/SystemTime;-><init>(Ljava/math/BigInteger;JLio/dronefleet/mavlink/common/SystemTime$1;)V

    return-object v0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/SystemTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 132
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/SystemTime$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final timeUnixUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/SystemTime$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX epoch time)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 118
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SystemTime$Builder;->timeUnixUsec:Ljava/math/BigInteger;

    return-object p0
.end method
