.class public interface abstract Lnet/bytebuddy/ClassFileVersion$VersionLocator;
.super Ljava/lang/Object;
.source "ClassFileVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ClassFileVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "VersionLocator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForLegacyVm;,
        Lnet/bytebuddy/ClassFileVersion$VersionLocator$ForJava9CapableVm;,
        Lnet/bytebuddy/ClassFileVersion$VersionLocator$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract locate()Lnet/bytebuddy/ClassFileVersion;
.end method
