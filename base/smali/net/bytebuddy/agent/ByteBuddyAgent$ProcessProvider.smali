.class public interface abstract Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProcessProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;
    }
.end annotation


# virtual methods
.method public abstract resolve()Ljava/lang/String;
.end method
