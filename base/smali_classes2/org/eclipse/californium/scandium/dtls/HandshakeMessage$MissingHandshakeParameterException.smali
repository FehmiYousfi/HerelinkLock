.class Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$MissingHandshakeParameterException;
.super Ljava/lang/IllegalArgumentException;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MissingHandshakeParameterException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4a76c14a1d8d59c4L


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$1;)V
    .locals 0

    .line 557
    invoke-direct {p0, p1}, Lorg/eclipse/californium/scandium/dtls/HandshakeMessage$MissingHandshakeParameterException;-><init>(Ljava/lang/String;)V

    return-void
.end method
