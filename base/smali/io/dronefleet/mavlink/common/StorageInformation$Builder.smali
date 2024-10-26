.class public final Lio/dronefleet/mavlink/common/StorageInformation$Builder;
.super Ljava/lang/Object;
.source "StorageInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/StorageInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private availableCapacity:F

.field private name:Ljava/lang/String;

.field private readSpeed:F

.field private status:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/StorageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private storageCount:I

.field private storageId:I

.field private timeBootMs:J

.field private totalCapacity:F

.field private type:I

.field private usedCapacity:F

.field private writeSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final availableCapacity(F)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Available storage capacity. If\n                storage is not ready (STORAGE_STATUS_READY) value will be ignored."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 444
    iput p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->availableCapacity:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/StorageInformation;
    .locals 15

    .line 509
    new-instance v14, Lio/dronefleet/mavlink/common/StorageInformation;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->timeBootMs:J

    iget v3, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->storageId:I

    iget v4, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->storageCount:I

    iget-object v5, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->totalCapacity:F

    iget v7, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->usedCapacity:F

    iget v8, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->availableCapacity:F

    iget v9, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->readSpeed:F

    iget v10, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->writeSpeed:F

    iget v11, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->type:I

    iget-object v12, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->name:Ljava/lang/String;

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/common/StorageInformation;-><init>(JIILio/dronefleet/mavlink/util/EnumValue;FFFFFILjava/lang/String;Lio/dronefleet/mavlink/common/StorageInformation$1;)V

    return-object v14
.end method

.method public final name(Ljava/lang/String;)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x20
        description = "Textual storage name to be used in UI (microSD 1,\n                Internal Memory, etc.) This is a NULL terminated string. If it is exactly 32\n                characters long, add a terminating NULL. If this string is empty, the generic type\n                is shown to the user."
        extension = true
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 504
    iput-object p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final readSpeed(F)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Read speed."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 457
    iput p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->readSpeed:F

    return-object p0
.end method

.method public final status(Lio/dronefleet/mavlink/common/StorageStatus;)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0

    .line 388
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/StorageInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/StorageStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/common/StorageInformation$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status of storage"
        enumType = Lio/dronefleet/mavlink/common/StorageStatus;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 380
    iput-object p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->status:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final status(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/StorageInformation$Builder;"
        }
    .end annotation

    .line 402
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/StorageInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs status([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0

    .line 395
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->status(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/StorageInformation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final storageCount(I)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of storage devices"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 366
    iput p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->storageCount:I

    return-object p0
.end method

.method public final storageId(I)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Storage ID (1 for first, 2 for\n                second, etc.)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 353
    iput p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->storageId:I

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 339
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final totalCapacity(F)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total capacity. If storage is not\n                ready (STORAGE_STATUS_READY) value will be ignored."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 415
    iput p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->totalCapacity:F

    return-object p0
.end method

.method public final type(I)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of storage"
        extension = true
        position = 0xb
        unitSize = 0x1
    .end annotation

    .line 484
    iput p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->type:I

    return-object p0
.end method

.method public final usedCapacity(F)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Used capacity. If storage is not\n                ready (STORAGE_STATUS_READY) value will be ignored."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 429
    iput p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->usedCapacity:F

    return-object p0
.end method

.method public final writeSpeed(F)Lio/dronefleet/mavlink/common/StorageInformation$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Write speed."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 470
    iput p1, p0, Lio/dronefleet/mavlink/common/StorageInformation$Builder;->writeSpeed:F

    return-object p0
.end method
