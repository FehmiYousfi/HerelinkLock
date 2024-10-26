.class public Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;
.super Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;
.source "ThreadLocalKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto<",
        "Ljava/security/KeyFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_FACTORIES:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;

    new-instance v1, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory$2;

    invoke-direct {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory$2;-><init>()V

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;->KEY_FACTORIES:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 43
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory$1;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;-><init>(Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;)V

    return-void
.end method
