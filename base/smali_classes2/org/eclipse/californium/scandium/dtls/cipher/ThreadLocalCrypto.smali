.class public Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;
.super Ljava/lang/Object;
.source "ThreadLocalCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CryptoFunction:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final exception:Ljava/security/GeneralSecurityException;

.field private final factory:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory<",
            "TCryptoFunction;>;"
        }
    .end annotation
.end field

.field private final threadLocalFunction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "TCryptoFunction;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->init()V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory<",
            "TCryptoFunction;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;->getInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    .line 57
    :try_start_1
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_0

    .line 60
    :cond_0
    :try_start_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2

    move-object p1, v0

    move-object v2, p1

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    .line 65
    :goto_1
    iput-object v2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->threadLocalFunction:Ljava/lang/ThreadLocal;

    .line 66
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->factory:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;

    .line 67
    iput-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->exception:Ljava/security/GeneralSecurityException;

    return-void
.end method


# virtual methods
.method public current()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCryptoFunction;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->threadLocalFunction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->factory:Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;

    invoke-interface {v1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto$Factory;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->threadLocalFunction:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public currentWithCause()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCryptoFunction;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->exception:Ljava/security/GeneralSecurityException;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->current()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    throw v0
.end method

.method public final getCause()Ljava/security/GeneralSecurityException;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->exception:Ljava/security/GeneralSecurityException;

    return-object v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCrypto;->exception:Ljava/security/GeneralSecurityException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
