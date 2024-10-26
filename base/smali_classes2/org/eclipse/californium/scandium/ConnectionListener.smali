.class public interface abstract Lorg/eclipse/californium/scandium/ConnectionListener;
.super Ljava/lang/Object;
.source "ConnectionListener.java"


# virtual methods
.method public abstract afterExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end method

.method public abstract beforeExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end method

.method public abstract onConnectionEstablished(Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end method

.method public abstract onConnectionMacError(Lorg/eclipse/californium/scandium/dtls/Connection;)Z
.end method

.method public abstract onConnectionRemoved(Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end method

.method public abstract onConnectionUpdatesSequenceNumbers(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z
.end method

.method public abstract updateExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end method
