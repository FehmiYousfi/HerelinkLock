.class public Lorg/eclipse/californium/scandium/dtls/ConnectionId;
.super Lorg/eclipse/californium/elements/util/Bytes;
.source "ConnectionId.java"


# static fields
.field public static final EMPTY:Lorg/eclipse/californium/scandium/dtls/ConnectionId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    sget-object v1, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;-><init>([B)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->EMPTY:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/Bytes;-><init>([B)V

    return-void
.end method

.method public static supportsConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static useConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static useConnectionId(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0}, Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;->useConnectionId()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ConnectionId;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
