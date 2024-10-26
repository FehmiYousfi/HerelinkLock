.class public interface abstract Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "AgentProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;
    }
.end annotation


# virtual methods
.method public abstract resolve()Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
