.class public Lnet/bytebuddy/jar/asm/Attribute;
.super Ljava/lang/Object;


# instance fields
.field a:Lnet/bytebuddy/jar/asm/Attribute;

.field b:[B

.field public final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    :cond_0
    return v1
.end method

.method final a(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)I
    .locals 8

    const/4 v0, 0x0

    move v7, v0

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/Attribute;->write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v7, v1

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    :cond_0
    return v7
.end method

.method final a(Lnet/bytebuddy/jar/asm/ClassWriter;[BIIILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 7

    move-object v6, p0

    :goto_0
    if-eqz v6, :cond_0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Attribute;->write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, v6, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p6, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    const/4 v2, 0x0

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {p6, v1, v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v6, v6, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getLabels()[Lnet/bytebuddy/jar/asm/Label;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCodeAttribute()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected read(Lnet/bytebuddy/jar/asm/ClassReader;II[CI[Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Attribute;
    .locals 0

    new-instance p4, Lnet/bytebuddy/jar/asm/Attribute;

    iget-object p5, p0, Lnet/bytebuddy/jar/asm/Attribute;->type:Ljava/lang/String;

    invoke-direct {p4, p5}, Lnet/bytebuddy/jar/asm/Attribute;-><init>(Ljava/lang/String;)V

    new-array p5, p3, [B

    iput-object p5, p4, Lnet/bytebuddy/jar/asm/Attribute;->b:[B

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/ClassReader;->b:[B

    iget-object p5, p4, Lnet/bytebuddy/jar/asm/Attribute;->b:[B

    const/4 p6, 0x0

    invoke-static {p1, p2, p5, p6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p4
.end method

.method protected write(Lnet/bytebuddy/jar/asm/ClassWriter;[BIII)Lnet/bytebuddy/jar/asm/ByteVector;
    .locals 0

    new-instance p1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/Attribute;->b:[B

    iput-object p2, p1, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    array-length p2, p2

    iput p2, p1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    return-object p1
.end method
