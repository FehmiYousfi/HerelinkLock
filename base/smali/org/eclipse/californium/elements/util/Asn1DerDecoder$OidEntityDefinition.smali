.class Lorg/eclipse/californium/elements/util/Asn1DerDecoder$OidEntityDefinition;
.super Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;
.source "Asn1DerDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/Asn1DerDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OidEntityDefinition"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x6

    const/16 v1, 0x20

    const-string v2, "OID"

    .line 1290
    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString([B)Ljava/lang/String;
    .locals 6

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1302
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 1303
    div-int/lit8 v2, v1, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    move v3, v1

    .line 1304
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 1305
    aget-byte v4, p1, v3

    if-gez v4, :cond_1

    and-int/lit8 v4, v4, 0x7f

    add-int/lit8 v3, v3, 0x1

    .line 1309
    array-length v5, p1

    if-eq v3, v5, :cond_0

    shl-int/lit8 v4, v4, 0x7

    .line 1313
    aget-byte v5, p1, v3

    and-int/lit8 v5, v5, 0x7f

    or-int/2addr v4, v5

    .line 1314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1310
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid OID 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/californium/elements/util/StringUtil;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v3, v1

    goto :goto_0

    .line 1319
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
