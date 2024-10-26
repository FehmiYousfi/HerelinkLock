.class public Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;
.super Ljava/security/GeneralSecurityException;
.source "InvalidMacException.java"


# static fields
.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "MAC validation failed"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final actual:[B

.field private final expected:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "MAC validation failed"

    .line 39
    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    sget-object p1, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;->expected:[B

    .line 50
    sget-object p1, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;->actual:[B

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    const-string v0, "MAC validation failed"

    .line 60
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 61
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;->expected:[B

    .line 62
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;->actual:[B

    return-void
.end method


# virtual methods
.method public final getActual()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;->actual:[B

    return-object v0
.end method

.method public final getExpected()[B
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/InvalidMacException;->expected:[B

    return-object v0
.end method
