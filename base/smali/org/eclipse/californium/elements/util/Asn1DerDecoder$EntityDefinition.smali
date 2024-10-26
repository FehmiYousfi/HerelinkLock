.class Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;
.super Ljava/lang/Object;
.source "Asn1DerDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/Asn1DerDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityDefinition"
.end annotation


# static fields
.field private static final HEADER_LENGTH:I = 0x2


# instance fields
.field private final description:Ljava/lang/String;

.field private final expectedTag:I

.field private final maxLength:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    iput p1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->expectedTag:I

    .line 1147
    iput p2, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->maxLength:I

    .line 1148
    iput-object p3, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkTag(I)Z
    .locals 1

    .line 1160
    iget v0, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->expectedTag:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createRangeReader(Lorg/eclipse/californium/elements/util/DatagramReader;Z)Lorg/eclipse/californium/elements/util/DatagramReader;
    .locals 0

    .line 1215
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->readLength(Lorg/eclipse/californium/elements/util/DatagramReader;Z)I

    move-result p2

    .line 1216
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/util/DatagramReader;->createRangeReader(I)Lorg/eclipse/californium/elements/util/DatagramReader;

    move-result-object p1

    return-object p1
.end method

.method public read(Lorg/eclipse/californium/elements/util/DatagramReader;Z)[B
    .locals 0

    .line 1199
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->readLength(Lorg/eclipse/californium/elements/util/DatagramReader;Z)I

    move-result p2

    .line 1200
    invoke-virtual {p1, p2}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Lorg/eclipse/californium/elements/util/DatagramReader;)[B
    .locals 1

    const/4 v0, 0x1

    .line 1172
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->read(Lorg/eclipse/californium/elements/util/DatagramReader;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public readLength(Lorg/eclipse/californium/elements/util/DatagramReader;Z)I
    .locals 9

    .line 1231
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v0

    const/16 v1, 0x8

    div-int/2addr v0, v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_8

    .line 1238
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->mark()V

    .line 1240
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v0

    .line 1241
    invoke-virtual {p0, v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->checkTag(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1247
    invoke-virtual {p1, v1}, Lorg/eclipse/californium/elements/util/DatagramReader;->read(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x2

    const/16 v7, 0x7f

    if-le v0, v7, :cond_3

    and-int/lit8 v0, v0, 0x7f

    const/4 v6, 0x4

    if-gt v0, v6, :cond_2

    .line 1256
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v6

    div-int/2addr v6, v1

    if-gt v0, v6, :cond_1

    .line 1261
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readBytes(I)[B

    move-result-object v0

    move v6, v4

    move v7, v6

    .line 1264
    :goto_0
    array-length v8, v0

    if-ge v6, v8, :cond_0

    shl-int/lit8 v7, v7, 0x8

    .line 1266
    aget-byte v8, v0, v6

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v7, 0x2

    .line 1268
    array-length v0, v0

    add-int/2addr v6, v0

    move v0, v7

    goto :goto_1

    .line 1258
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->description:Ljava/lang/String;

    aput-object v1, p2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v5

    const-string v0, "%s length %d exceeds available bytes %d!"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1253
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->description:Ljava/lang/String;

    aput-object v1, p2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    const-string v0, "%s length-size %d too long!"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1270
    :cond_3
    :goto_1
    iget v7, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->maxLength:I

    if-gt v0, v7, :cond_6

    .line 1274
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->bitsLeft()I

    move-result v7

    div-int/2addr v7, v1

    if-gt v0, v7, :cond_5

    if-eqz p2, :cond_4

    .line 1280
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->reset()V

    move v0, v6

    :cond_4
    return v0

    .line 1276
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->description:Ljava/lang/String;

    aput-object v1, p2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v5

    const-string v0, "%s lengh %d exceeds available bytes %d!"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1271
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->description:Ljava/lang/String;

    aput-object v1, p2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    iget v0, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->maxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v5

    const-string v0, "%s lenght %d too large! (supported maxium %d)"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1242
    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/californium/elements/util/DatagramReader;->reset()V

    .line 1243
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->description:Ljava/lang/String;

    aput-object v1, p2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    iget v0, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->expectedTag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v5

    const-string v0, "No %s, found %02x instead of %02x!"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1233
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->description:Ljava/lang/String;

    aput-object v1, p2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v5

    const-string v0, "Not enough bytes for %s! Required %d, available %d."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B
    .locals 1

    const/4 v0, 0x0

    .line 1184
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;->read(Lorg/eclipse/californium/elements/util/DatagramReader;Z)[B

    move-result-object p1

    return-object p1
.end method
