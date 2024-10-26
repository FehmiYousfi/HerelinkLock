.class final Lorg/eclipse/californium/elements/util/SslContextUtil$1;
.super Ljava/lang/Object;
.source "SslContextUtil.java"

# interfaces
.implements Lorg/eclipse/californium/elements/util/SslContextUtil$SimpleKeyStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/elements/util/SslContextUtil;->configureDefaults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    invoke-static {p1}, Lorg/eclipse/californium/elements/util/SslContextUtil;->loadPemCredentials(Ljava/io/InputStream;)Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    move-result-object p1

    return-object p1
.end method
