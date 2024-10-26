.class public final Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
.super Ljava/lang/Object;
.source "IsbdLinkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/IsbdLinkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private failedSessions:I

.field private lastHeartbeat:Ljava/math/BigInteger;

.field private ringPending:I

.field private rxSessionPending:I

.field private signalQuality:I

.field private successfulSessions:I

.field private timestamp:Ljava/math/BigInteger;

.field private txSessionPending:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/IsbdLinkStatus;
    .locals 11

    .line 367
    new-instance v10, Lio/dronefleet/mavlink/common/IsbdLinkStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->timestamp:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->lastHeartbeat:Ljava/math/BigInteger;

    iget v3, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->failedSessions:I

    iget v4, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->successfulSessions:I

    iget v5, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->signalQuality:I

    iget v6, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->ringPending:I

    iget v7, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->txSessionPending:I

    iget v8, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->rxSessionPending:I

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/IsbdLinkStatus;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IIIIIILio/dronefleet/mavlink/common/IsbdLinkStatus$1;)V

    return-object v10
.end method

.method public final failedSessions(I)Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of failed SBD sessions."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 292
    iput p1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->failedSessions:I

    return-object p0
.end method

.method public final lastHeartbeat(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp of the last successful\n                sbd session. The receiving end can infer timestamp format (since 1.1.1970 or since\n                system boot) by checking for the magnitude of the number."
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 279
    iput-object p1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->lastHeartbeat:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final ringPending(I)Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "1: Ring call pending, 0: No call pending."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 334
    iput p1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->ringPending:I

    return-object p0
.end method

.method public final rxSessionPending(I)Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "1: Receiving session pending, 0: No\n                receiving session pending."
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 362
    iput p1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->rxSessionPending:I

    return-object p0
.end method

.method public final signalQuality(I)Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Signal quality equal to the number of bars\n                displayed on the ISU signal strength indicator. Range is 0 to 5, where 0 indicates\n                no signal and 5 indicates maximum signal strength."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 321
    iput p1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->signalQuality:I

    return-object p0
.end method

.method public final successfulSessions(I)Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of successful SBD sessions."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 305
    iput p1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->successfulSessions:I

    return-object p0
.end method

.method public final timestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 263
    iput-object p1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->timestamp:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final txSessionPending(I)Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "1: Transmission session pending, 0: No\n                transmission session pending."
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 348
    iput p1, p0, Lio/dronefleet/mavlink/common/IsbdLinkStatus$Builder;->txSessionPending:I

    return-object p0
.end method
