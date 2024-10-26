.class public Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;
.super Ljava/lang/Object;
.source "SslContextUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/SslContextUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStoreType"
.end annotation


# instance fields
.field public final simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 1488
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->type:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1492
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    return-void

    .line 1489
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key store type must not be empty!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1486
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key store type must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;)V
    .locals 1

    .line 1502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1506
    iput-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->type:Ljava/lang/String;

    .line 1507
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$KeyStoreType;->simpleStore:Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;

    return-void

    .line 1504
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "simple key store must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
