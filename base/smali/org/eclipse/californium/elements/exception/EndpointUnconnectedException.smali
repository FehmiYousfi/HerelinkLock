.class public Lorg/eclipse/californium/elements/exception/EndpointUnconnectedException;
.super Lorg/eclipse/californium/elements/exception/ConnectorException;
.source "EndpointUnconnectedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/eclipse/californium/elements/exception/ConnectorException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/exception/ConnectorException;-><init>(Ljava/lang/String;)V

    return-void
.end method
