.class public interface abstract Lnet/bytebuddy/agent/VirtualMachine;
.super Ljava/lang/Object;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot;
    }
.end annotation


# virtual methods
.method public abstract detach()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract loadAgent(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
