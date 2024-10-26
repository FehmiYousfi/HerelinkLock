.class public interface abstract Lorg/eclipse/californium/elements/EndpointContext;
.super Ljava/lang/Object;
.source "EndpointContext.java"


# virtual methods
.method public abstract entries()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/eclipse/californium/elements/Definition<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract get(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/Definition<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getPeerAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getPeerIdentity()Ljava/security/Principal;
.end method

.method public abstract getString(Lorg/eclipse/californium/elements/Definition;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/californium/elements/Definition<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getVirtualHost()Ljava/lang/String;
.end method

.method public abstract hasCriticalEntries()Z
.end method
