.class public final Lio/dronefleet/mavlink/common/Statustext$Builder;
.super Ljava/lang/Object;
.source "Statustext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Statustext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private chunkSeq:I

.field private id:I

.field private severity:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSeverity;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/Statustext;
    .locals 7

    .line 258
    new-instance v6, Lio/dronefleet/mavlink/common/Statustext;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/Statustext$Builder;->severity:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/Statustext$Builder;->text:Ljava/lang/String;

    iget v3, p0, Lio/dronefleet/mavlink/common/Statustext$Builder;->id:I

    iget v4, p0, Lio/dronefleet/mavlink/common/Statustext$Builder;->chunkSeq:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/Statustext;-><init>(Lio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;IILio/dronefleet/mavlink/common/Statustext$1;)V

    return-object v6
.end method

.method public final chunkSeq(I)Lio/dronefleet/mavlink/common/Statustext$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "This chunk\'s sequence number; indexing is from\n                zero. Any null character in the text field is taken to mean this was the last chunk."
        extension = true
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 253
    iput p1, p0, Lio/dronefleet/mavlink/common/Statustext$Builder;->chunkSeq:I

    return-object p0
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/Statustext$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Unique (opaque) identifier for this statustext message.\n                May be used to reassemble a logical long-statustext message from a sequence of\n                chunks. A value of zero indicates this is the only chunk in the sequence and the\n                message can be emitted immediately."
        extension = true
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 237
    iput p1, p0, Lio/dronefleet/mavlink/common/Statustext$Builder;->id:I

    return-object p0
.end method

.method public final severity(Lio/dronefleet/mavlink/common/MavSeverity;)Lio/dronefleet/mavlink/common/Statustext$Builder;
    .locals 0

    .line 190
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Statustext$Builder;->severity(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Statustext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final severity(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Statustext$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavSeverity;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Statustext$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Severity of status. Relies on\n                the definitions within RFC-5424."
        enumType = Lio/dronefleet/mavlink/common/MavSeverity;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 182
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Statustext$Builder;->severity:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final severity(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/Statustext$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Statustext$Builder;"
        }
    .end annotation

    .line 204
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Statustext$Builder;->severity(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Statustext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs severity([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/Statustext$Builder;
    .locals 0

    .line 197
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Statustext$Builder;->severity(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Statustext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final text(Ljava/lang/String;)Lio/dronefleet/mavlink/common/Statustext$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x32
        description = "Status text message, without null termination\n                character"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 218
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Statustext$Builder;->text:Ljava/lang/String;

    return-object p0
.end method
