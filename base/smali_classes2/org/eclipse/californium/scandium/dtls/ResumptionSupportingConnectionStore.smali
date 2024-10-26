.class public interface abstract Lorg/eclipse/californium/scandium/dtls/ResumptionSupportingConnectionStore;
.super Ljava/lang/Object;
.source "ResumptionSupportingConnectionStore.java"

# interfaces
.implements Lorg/eclipse/californium/elements/PersistentConnector;


# virtual methods
.method public abstract attach(Lorg/eclipse/californium/scandium/dtls/ConnectionIdGenerator;)V
.end method

.method public abstract clear()V
.end method

.method public abstract find(Lorg/eclipse/californium/scandium/dtls/SessionId;)Lorg/eclipse/californium/scandium/dtls/DTLSSession;
.end method

.method public abstract get(Ljava/net/InetSocketAddress;)Lorg/eclipse/californium/scandium/dtls/Connection;
.end method

.method public abstract get(Lorg/eclipse/californium/scandium/dtls/ConnectionId;)Lorg/eclipse/californium/scandium/dtls/Connection;
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/eclipse/californium/scandium/dtls/Connection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract markAllAsResumptionRequired()V
.end method

.method public abstract put(Lorg/eclipse/californium/scandium/dtls/Connection;)Z
.end method

.method public abstract putEstablishedSession(Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end method

.method public abstract remainingCapacity()I
.end method

.method public abstract remove(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z
.end method

.method public abstract removeFromEstablishedSessions(Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end method

.method public abstract restore(Lorg/eclipse/californium/scandium/dtls/Connection;)Z
.end method

.method public abstract setConnectionListener(Lorg/eclipse/californium/scandium/ConnectionListener;)V
.end method

.method public abstract stop(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract update(Lorg/eclipse/californium/scandium/dtls/Connection;Ljava/net/InetSocketAddress;)Z
.end method
