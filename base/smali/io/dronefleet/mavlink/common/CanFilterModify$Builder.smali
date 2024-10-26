.class public final Lio/dronefleet/mavlink/common/CanFilterModify$Builder;
.super Ljava/lang/Object;
.source "CanFilterModify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/CanFilterModify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bus:I

.field private ids:[I

.field private numIds:I

.field private operation:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/CanFilterOp;",
            ">;"
        }
    .end annotation
.end field

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/CanFilterModify;
    .locals 9

    .line 310
    new-instance v8, Lio/dronefleet/mavlink/common/CanFilterModify;

    iget v1, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->bus:I

    iget-object v4, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->operation:Lio/dronefleet/mavlink/util/EnumValue;

    iget v5, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->numIds:I

    iget-object v6, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->ids:[I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/CanFilterModify;-><init>(IIILio/dronefleet/mavlink/util/EnumValue;I[ILio/dronefleet/mavlink/common/CanFilterModify$1;)V

    return-object v8
.end method

.method public final bus(I)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "bus number"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 242
    iput p1, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->bus:I

    return-object p0
.end method

.method public final ids([I)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "filter IDs, length num_ids"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 305
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->ids:[I

    return-object p0
.end method

.method public final numIds(I)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "number of IDs in filter list"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 291
    iput p1, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->numIds:I

    return-object p0
.end method

.method public final operation(Lio/dronefleet/mavlink/common/CanFilterOp;)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;
    .locals 0

    .line 265
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->operation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final operation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/CanFilterOp;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CanFilterModify$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "what operation to perform on\n                the filter list. See CAN_FILTER_OP enum."
        enumType = Lio/dronefleet/mavlink/common/CanFilterOp;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 257
    iput-object p1, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->operation:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final operation(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/CanFilterModify$Builder;"
        }
    .end annotation

    .line 279
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->operation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs operation([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;
    .locals 0

    .line 272
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->operation(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 229
    iput p1, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/CanFilterModify$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 216
    iput p1, p0, Lio/dronefleet/mavlink/common/CanFilterModify$Builder;->targetSystem:I

    return-object p0
.end method
