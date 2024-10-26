.class public final Lorg/eclipse/californium/scandium/dtls/AlertMessage;
.super Ljava/lang/Object;
.source "AlertMessage.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/DTLSMessage;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;,
        Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;
    }
.end annotation


# static fields
.field private static final BITS:I = 0x8

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final description:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field private final level:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

.field private final protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 88
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->PROTOCOL_VERSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Protocol version is only supported for that specific alert!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->level:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    .line 92
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->description:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 93
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-void

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Description must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Level must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromByteArray([B)Lorg/eclipse/californium/scandium/dtls/AlertMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/californium/scandium/dtls/HandshakeException;
        }
    .end annotation

    .line 243
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramReader;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/util/DatagramReader;-><init>([B)V

    .line 244
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result p0

    .line 245
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v0

    .line 246
    invoke-static {p0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->getLevelByCode(I)Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    move-result-object v1

    .line 247
    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->getDescriptionByCode(I)Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    .line 255
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    invoke-direct {p0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    return-object p0

    .line 252
    :cond_0
    new-instance p0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "Unknown alert description code [%d]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {p0, v0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw p0

    .line 249
    :cond_1
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "Unknown alert level code [%d]"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    sget-object v2, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;-><init>(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)V

    invoke-direct {v0, p0, v1}, Lorg/eclipse/californium/scandium/dtls/HandshakeException;-><init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 292
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 295
    :cond_2
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    .line 296
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->description:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    iget-object v3, p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->description:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    if-eq v2, v3, :cond_3

    return v1

    .line 299
    :cond_3
    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->level:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    iget-object p1, p1, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->level:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0
.end method

.method public getContentType()Lorg/eclipse/californium/scandium/dtls/ContentType;
    .locals 1

    .line 203
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ContentType;->ALERT:Lorg/eclipse/californium/scandium/dtls/ContentType;

    return-object v0
.end method

.method public getDescription()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->description:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    return-object v0
.end method

.method public getLevel()Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->level:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    return-object v0
.end method

.method public getProtocolVersion()Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 283
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->level:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->access$000(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;)B

    move-result v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->description:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->access$100(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public isFatal()Z
    .locals 2

    .line 278
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->FATAL:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->level:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    invoke-virtual {v0, v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .line 234
    new-instance v0, Lorg/eclipse/californium/elements/util/DatagramWriter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/eclipse/californium/elements/util/DatagramWriter;-><init>(I)V

    .line 236
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->level:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;->getCode()B

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 237
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->description:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->getCode()B

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/elements/util/DatagramWriter;->write(II)V

    .line 239
    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->indentation(I)Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Alert Protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->level:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->description:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Protocol Version: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage;->protocolVersion:Lorg/eclipse/californium/scandium/dtls/ProtocolVersion;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/californium/elements/util/StringUtil;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
