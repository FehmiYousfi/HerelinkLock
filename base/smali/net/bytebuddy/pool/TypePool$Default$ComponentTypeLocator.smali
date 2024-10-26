.class public interface abstract Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;
.super Ljava/lang/Object;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ComponentTypeLocator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForArrayType;,
        Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;,
        Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$Illegal;
    }
.end annotation


# virtual methods
.method public abstract bind(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$AbstractBase$RawDescriptionArray$ComponentTypeReference;
.end method
