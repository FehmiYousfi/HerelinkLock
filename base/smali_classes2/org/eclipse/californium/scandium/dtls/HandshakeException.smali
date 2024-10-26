.class public Lorg/eclipse/californium/scandium/dtls/HandshakeException;
.super Ljava/lang/Exception;
.source "HandshakeException.java"


# static fields
.field private static final serialVersionUID:J = 0xf972cd771fcf702L


# instance fields
.field private final alert:Lorg/eclipse/californium/scandium/dtls/AlertMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 40
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;->alert:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Alert must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/AlertMessage;Ljava/lang/Throwable;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    .line 56
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;->alert:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Alert must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAlert()Lorg/eclipse/californium/scandium/dtls/AlertMessage;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HandshakeException;->alert:Lorg/eclipse/californium/scandium/dtls/AlertMessage;

    return-object v0
.end method
