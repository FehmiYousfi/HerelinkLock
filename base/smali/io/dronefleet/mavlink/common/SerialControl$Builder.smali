.class public final Lio/dronefleet/mavlink/common/SerialControl$Builder;
.super Ljava/lang/Object;
.source "SerialControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/SerialControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baudrate:J

.field private count:I

.field private data:[B

.field private device:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/SerialControlDev;",
            ">;"
        }
    .end annotation
.end field

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/SerialControlFlag;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final baudrate(J)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Baudrate of transfer. Zero means\n                no change."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 304
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->baudrate:J

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/SerialControl;
    .locals 10

    .line 336
    new-instance v9, Lio/dronefleet/mavlink/common/SerialControl;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->device:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget v3, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->timeout:I

    iget-wide v4, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->baudrate:J

    iget v6, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->count:I

    iget-object v7, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->data:[B

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/SerialControl;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IJI[BLio/dronefleet/mavlink/common/SerialControl$1;)V

    return-object v9
.end method

.method public final count(I)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "how many bytes in this transfer"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 317
    iput p1, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->count:I

    return-object p0
.end method

.method public final data([B)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x46
        description = "serial data"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 331
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->data:[B

    return-object p0
.end method

.method public final device(Lio/dronefleet/mavlink/common/SerialControlDev;)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0

    .line 228
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SerialControl$Builder;->device(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SerialControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final device(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/SerialControlDev;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SerialControl$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Serial control device\n                type."
        enumType = Lio/dronefleet/mavlink/common/SerialControlDev;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 220
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->device:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final device(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SerialControl$Builder;"
        }
    .end annotation

    .line 242
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SerialControl$Builder;->device(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SerialControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs device([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0

    .line 235
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SerialControl$Builder;->device(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SerialControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/common/SerialControlFlag;)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0

    .line 264
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SerialControl$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SerialControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/SerialControlFlag;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SerialControl$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap\n                of serial control flags."
        enumType = Lio/dronefleet/mavlink/common/SerialControlFlag;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 256
    iput-object p1, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/SerialControl$Builder;"
        }
    .end annotation

    .line 278
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SerialControl$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SerialControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0

    .line 271
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/SerialControl$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/SerialControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final timeout(I)Lio/dronefleet/mavlink/common/SerialControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timeout for reply data"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 290
    iput p1, p0, Lio/dronefleet/mavlink/common/SerialControl$Builder;->timeout:I

    return-object p0
.end method
