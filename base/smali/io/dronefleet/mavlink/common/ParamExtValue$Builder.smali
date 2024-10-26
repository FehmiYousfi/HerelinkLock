.class public final Lio/dronefleet/mavlink/common/ParamExtValue$Builder;
.super Ljava/lang/Object;
.source "ParamExtValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ParamExtValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private paramCount:I

.field private paramId:Ljava/lang/String;

.field private paramIndex:I

.field private paramType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamExtType;",
            ">;"
        }
    .end annotation
.end field

.field private paramValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ParamExtValue;
    .locals 8

    .line 282
    new-instance v7, Lio/dronefleet/mavlink/common/ParamExtValue;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramId:Ljava/lang/String;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramValue:Ljava/lang/String;

    iget-object v3, p0, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, p0, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramCount:I

    iget v5, p0, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramIndex:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/ParamExtValue;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;IILio/dronefleet/mavlink/common/ParamExtValue$1;)V

    return-object v7
.end method

.method public final paramCount(I)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of parameters"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 264
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramCount:I

    return-object p0
.end method

.method public final paramId(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Parameter id, terminated by NULL if the length is\n                less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the\n                length is exactly 16 chars - applications have to provide 16+1 bytes storage if the\n                ID is stored as string"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 202
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method public final paramIndex(I)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Index of this parameter"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 277
    iput p1, p0, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramIndex:I

    return-object p0
.end method

.method public final paramType(Lio/dronefleet/mavlink/common/MavParamExtType;)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;
    .locals 0

    .line 238
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamExtType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamExtValue$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Parameter type."
        enumType = Lio/dronefleet/mavlink/common/MavParamExtType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 230
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final paramType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/ParamExtValue$Builder;"
        }
    .end annotation

    .line 252
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs paramType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;
    .locals 0

    .line 245
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final paramValue(Ljava/lang/String;)Lio/dronefleet/mavlink/common/ParamExtValue$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x80
        description = "Parameter value"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 216
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamExtValue$Builder;->paramValue:Ljava/lang/String;

    return-object p0
.end method
