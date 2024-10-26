.class Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;
.super Ljava/lang/Object;
.source "XECDHECryptography.java"

# interfaces
.implements Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XDHPublicKeyReflection"
.end annotation


# instance fields
.field private final NamedParameterSpecGetName:Ljava/lang/reflect/Method;

.field private final XECPublicKeyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final XECPublicKeyGetParams:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 817
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->XECPublicKeyClass:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 818
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->XECPublicKeyGetParams:Ljava/lang/reflect/Method;

    .line 819
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->NamedParameterSpecGetName:Ljava/lang/reflect/Method;

    return-void

    .line 815
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "XECPublicKeyClass must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 833
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->XECPublicKeyClass:Ljava/lang/Class;

    .line 834
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->XECPublicKeyGetParams:Ljava/lang/reflect/Method;

    .line 835
    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->NamedParameterSpecGetName:Ljava/lang/reflect/Method;

    return-void

    .line 831
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "NamedParameterSpecGetName must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 828
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "XECPublicKeyGetParams must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 825
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "XECPublicKeyClass must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;
    .locals 1

    .line 807
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->init()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;

    move-result-object v0

    return-object v0
.end method

.method private static init()Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyApi;
    .locals 4

    .line 862
    :try_start_0
    invoke-static {}, Lorg/eclipse/californium/elements/util/JceProviderUtil;->usesBouncyCastle()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric.edec.BCXDHPublicKey"

    .line 863
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 864
    new-instance v1, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;

    invoke-direct {v1, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;-><init>(Ljava/lang/Class;)V

    return-object v1

    :cond_0
    const-string v0, "java.security.spec.NamedParameterSpec"

    .line 866
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 867
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "java.security.interfaces.XECPublicKey"

    .line 868
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getParams"

    new-array v2, v2, [Ljava/lang/Class;

    .line 869
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 870
    new-instance v3, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;

    invoke-direct {v3, v1, v2, v0}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 873
    :catchall_0
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "X25519/X448 not supported!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCurveName(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->XECPublicKeyClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->XECPublicKeyGetParams:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->NamedParameterSpecGetName:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 848
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 849
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->NamedParameterSpecGetName:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 851
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "X25519/X448 not supported by JRE!"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 854
    :cond_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 857
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupporting(Ljava/security/PublicKey;)Z
    .locals 1

    .line 840
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$XDHPublicKeyReflection;->XECPublicKeyClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
