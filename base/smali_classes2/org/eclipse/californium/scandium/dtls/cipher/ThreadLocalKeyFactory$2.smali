.class final Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory$2;
.super Ljava/lang/Object;
.source "ThreadLocalKeyFactory.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalCryptoMap$Factory<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory$2;->getInstance(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;
    .locals 1

    .line 64
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;

    invoke-direct {v0, p1}, Lorg/eclipse/californium/scandium/dtls/cipher/ThreadLocalKeyFactory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
