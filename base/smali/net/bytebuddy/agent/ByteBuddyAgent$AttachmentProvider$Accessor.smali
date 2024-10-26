.class public interface abstract Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Accessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Simple;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$Unavailable;
    }
.end annotation


# static fields
.field public static final VIRTUAL_MACHINE_TYPE_NAME:Ljava/lang/String; = "com.sun.tools.attach.VirtualMachine"

.field public static final VIRTUAL_MACHINE_TYPE_NAME_J9:Ljava/lang/String; = "com.ibm.tools.attach.VirtualMachine"


# virtual methods
.method public abstract getVirtualMachineType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract isAvailable()Z
.end method
