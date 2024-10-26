.class synthetic Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$1;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$CipherType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 207
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$CipherType:[I

    :try_start_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$CipherType:[I

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->BLOCK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$1;->$SwitchMap$org$eclipse$californium$scandium$dtls$cipher$CipherSuite$CipherType:[I

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    invoke-virtual {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
