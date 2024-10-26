.class public interface abstract Lorg/eclipse/californium/scandium/DtlsClusterConnector$ClusterNodesProvider;
.super Ljava/lang/Object;
.source "DtlsClusterConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/DtlsClusterConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClusterNodesProvider"
.end annotation


# virtual methods
.method public abstract available(Ljava/net/InetSocketAddress;)Z
.end method

.method public abstract getClusterNode(I)Ljava/net/InetSocketAddress;
.end method
