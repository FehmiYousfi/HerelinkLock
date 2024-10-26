.class public final Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
.super Ljava/lang/Object;
.source "HilRcInputsRaw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HilRcInputsRaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private chan10Raw:I

.field private chan11Raw:I

.field private chan12Raw:I

.field private chan1Raw:I

.field private chan2Raw:I

.field private chan3Raw:I

.field private chan4Raw:I

.field private chan5Raw:I

.field private chan6Raw:I

.field private chan7Raw:I

.field private chan8Raw:I

.field private chan9Raw:I

.field private rssi:I

.field private timeUsec:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/HilRcInputsRaw;
    .locals 18

    move-object/from16 v0, p0

    .line 570
    new-instance v17, Lio/dronefleet/mavlink/common/HilRcInputsRaw;

    iget-object v2, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan1Raw:I

    iget v4, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan2Raw:I

    iget v5, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan3Raw:I

    iget v6, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan4Raw:I

    iget v7, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan5Raw:I

    iget v8, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan6Raw:I

    iget v9, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan7Raw:I

    iget v10, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan8Raw:I

    iget v11, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan9Raw:I

    iget v12, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan10Raw:I

    iget v13, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan11Raw:I

    iget v14, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan12Raw:I

    iget v15, v0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->rssi:I

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lio/dronefleet/mavlink/common/HilRcInputsRaw;-><init>(Ljava/math/BigInteger;IIIIIIIIIIIIILio/dronefleet/mavlink/common/HilRcInputsRaw$1;)V

    return-object v17
.end method

.method public final chan10Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 10 value"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 524
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan10Raw:I

    return-object p0
.end method

.method public final chan11Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 11 value"
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 537
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan11Raw:I

    return-object p0
.end method

.method public final chan12Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 12 value"
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 550
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan12Raw:I

    return-object p0
.end method

.method public final chan1Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 1 value"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 407
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan1Raw:I

    return-object p0
.end method

.method public final chan2Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 2 value"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 420
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan2Raw:I

    return-object p0
.end method

.method public final chan3Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 3 value"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 433
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan3Raw:I

    return-object p0
.end method

.method public final chan4Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 4 value"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 446
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan4Raw:I

    return-object p0
.end method

.method public final chan5Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 5 value"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 459
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan5Raw:I

    return-object p0
.end method

.method public final chan6Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 6 value"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 472
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan6Raw:I

    return-object p0
.end method

.method public final chan7Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 7 value"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 485
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan7Raw:I

    return-object p0
.end method

.method public final chan8Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 8 value"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 498
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan8Raw:I

    return-object p0
.end method

.method public final chan9Raw(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RC channel 9 value"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 511
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->chan9Raw:I

    return-object p0
.end method

.method public final rssi(I)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Receive signal strength indicator in device-dependent\n                units/scale. Values: [0-254], 255: invalid/unknown."
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 565
    iput p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->rssi:I

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 394
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilRcInputsRaw$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method
