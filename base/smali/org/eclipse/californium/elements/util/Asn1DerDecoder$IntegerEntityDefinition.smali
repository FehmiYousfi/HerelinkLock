.class Lorg/eclipse/californium/elements/util/Asn1DerDecoder$IntegerEntityDefinition;
.super Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;
.source "Asn1DerDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/Asn1DerDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerEntityDefinition"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    const/high16 v1, 0x10000

    const-string v2, "INTEGER"

    .line 1326
    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder$EntityDefinition;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toInteger([B)I
    .locals 6

    if-eqz p1, :cond_6

    .line 1339
    array-length v0, p1

    if-eqz v0, :cond_5

    .line 1342
    array-length v0, p1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    .line 1346
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    .line 1348
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_0

    shl-int/lit8 v4, v4, 0x8

    .line 1350
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-ltz v4, :cond_2

    move v0, v2

    :cond_2
    xor-int/2addr p1, v0

    if-nez p1, :cond_3

    return v4

    .line 1353
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "INTEGER byte array value overflow!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1343
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTEGER byte array "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes is too large for int (max. 4 bytes)!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "INTEGER byte array must not be empty!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1337
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "INTEGER byte array must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
