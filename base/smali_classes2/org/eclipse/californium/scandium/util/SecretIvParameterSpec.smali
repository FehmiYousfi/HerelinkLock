.class public Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;
.super Ljava/lang/Object;
.source "SecretIvParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field private destroyed:Z

.field private final iv:[B


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p1, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->iv:[B

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->iv:[B

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "IV missing"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 54
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 85
    array-length v0, p1

    if-eqz v0, :cond_2

    if-ltz p3, :cond_1

    .line 91
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_0

    add-int/2addr p3, p2

    .line 94
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->iv:[B

    return-void

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid offset/length combination"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "len is negative"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "IV missing"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->iv:[B

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/Bytes;->clear([B)V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->destroyed:Z

    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->destroyed:Z

    return v0
.end method

.method public size()I
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->iv:[B

    array-length v0, v0

    return v0
.end method

.method public writeTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/eclipse/californium/scandium/util/SecretIvParameterSpec;->iv:[B

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    return-void
.end method
