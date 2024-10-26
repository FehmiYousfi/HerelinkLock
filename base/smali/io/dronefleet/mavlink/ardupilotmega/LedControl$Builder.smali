.class public final Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;
.super Ljava/lang/Object;
.source "LedControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/LedControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private customBytes:[B

.field private customLen:I

.field private instance:I

.field private pattern:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/LedControl;
    .locals 9

    .line 277
    new-instance v8, Lio/dronefleet/mavlink/ardupilotmega/LedControl;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->instance:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->pattern:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->customLen:I

    iget-object v6, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->customBytes:[B

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/LedControl;-><init>(IIIII[BLio/dronefleet/mavlink/ardupilotmega/LedControl$1;)V

    return-object v8
.end method

.method public final customBytes([B)Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x18
        description = "Custom Bytes."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 272
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->customBytes:[B

    return-object p0
.end method

.method public final customLen(I)Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Custom Byte Length."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 258
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->customLen:I

    return-object p0
.end method

.method public final instance(I)Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Instance (LED instance to control or 255 for all\n                LEDs)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 232
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->instance:I

    return-object p0
.end method

.method public final pattern(I)Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pattern (see LED_PATTERN_ENUM)."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 245
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->pattern:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 218
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 205
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LedControl$Builder;->targetSystem:I

    return-object p0
.end method
