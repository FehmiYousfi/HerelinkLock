.class public Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;
.super Ljava/lang/IllegalArgumentException;
.source "SslContextUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/SslContextUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncompleteCredentialsException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xd198L


# instance fields
.field private final incompleteCredentials:Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;)V
    .locals 0

    .line 1407
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 1408
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;->incompleteCredentials:Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;Ljava/lang/String;)V
    .locals 0

    .line 1418
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1419
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;->incompleteCredentials:Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1430
    invoke-direct {p0, p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1431
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;->incompleteCredentials:Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    return-void
.end method


# virtual methods
.method public getIncompleteCredentials()Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;
    .locals 1

    .line 1440
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SslContextUtil$IncompleteCredentialsException;->incompleteCredentials:Lorg/eclipse/californium/elements/util/SslContextUtil$Credentials;

    return-object v0
.end method
