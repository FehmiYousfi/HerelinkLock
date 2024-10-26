.class public Lse/vidstige/jadb/server/AdbServer;
.super Lse/vidstige/jadb/server/SocketServer;
.source "AdbServer.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x3abd


# instance fields
.field private final responder:Lse/vidstige/jadb/server/AdbResponder;


# direct methods
.method public constructor <init>(Lse/vidstige/jadb/server/AdbResponder;)V
    .locals 1

    const/16 v0, 0x3abd

    .line 14
    invoke-direct {p0, p1, v0}, Lse/vidstige/jadb/server/AdbServer;-><init>(Lse/vidstige/jadb/server/AdbResponder;I)V

    return-void
.end method

.method public constructor <init>(Lse/vidstige/jadb/server/AdbResponder;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p2}, Lse/vidstige/jadb/server/SocketServer;-><init>(I)V

    .line 19
    iput-object p1, p0, Lse/vidstige/jadb/server/AdbServer;->responder:Lse/vidstige/jadb/server/AdbResponder;

    return-void
.end method


# virtual methods
.method protected createResponder(Ljava/net/Socket;)Ljava/lang/Runnable;
    .locals 2

    .line 24
    new-instance v0, Lse/vidstige/jadb/server/AdbProtocolHandler;

    iget-object v1, p0, Lse/vidstige/jadb/server/AdbServer;->responder:Lse/vidstige/jadb/server/AdbResponder;

    invoke-direct {v0, p1, v1}, Lse/vidstige/jadb/server/AdbProtocolHandler;-><init>(Ljava/net/Socket;Lse/vidstige/jadb/server/AdbResponder;)V

    return-object v0
.end method
