.class Lorg/eclipse/californium/elements/util/Asn1DerDecoder$StringEntityDefinition;
.super Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;
.source "Asn1DerDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/Asn1DerDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEntityDefinition"
.end annotation


# instance fields
.field private expectedTags:[I

.field private tag:I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1370
    aget v0, p1, v0

    const/high16 v1, 0x10000

    const-string v2, "STRING"

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;-><init>(IILjava/lang/String;)V

    .line 1371
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$StringEntityDefinition;->expectedTags:[I

    return-void
.end method


# virtual methods
.method public checkTag(I)Z
    .locals 5

    .line 1376
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$StringEntityDefinition;->expectedTags:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    .line 1378
    iput p1, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$StringEntityDefinition;->tag:I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public readStringValue(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljava/lang/String;
    .locals 2

    .line 1394
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$StringEntityDefinition;->readValue(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1396
    iget v0, p0, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$StringEntityDefinition;->tag:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 1397
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/californium/elements/util/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 1399
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/eclipse/californium/elements/util/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 1401
    invoke-static {}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->access$200()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1404
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->access$200()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 1402
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BMP_STRING not supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v1, 0x1c

    if-ne v0, v1, :cond_5

    .line 1406
    invoke-static {}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->access$200()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1409
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->access$300()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 1407
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UNIVERSAL_STRING not supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/16 p1, 0x14

    if-eq v0, p1, :cond_6

    goto :goto_0

    .line 1411
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TELETEX_STRING not supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
