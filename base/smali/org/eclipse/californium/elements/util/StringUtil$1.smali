.class final Lorg/eclipse/californium/elements/util/StringUtil$1;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/elements/util/StringUtil;->toLog(Ljava/net/SocketAddress;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$address:Ljava/net/SocketAddress;


# direct methods
.method constructor <init>(Ljava/net/SocketAddress;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/StringUtil$1;->val$address:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 628
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/StringUtil$1;->val$address:Ljava/net/SocketAddress;

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 629
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/StringUtil;->toDisplayString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 631
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
