.class public interface abstract Lnet/bytebuddy/implementation/bind/annotation/Default$Binder$TypeLocator;
.super Ljava/lang/Object;
.source "Default.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Default$Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "TypeLocator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bind/annotation/Default$Binder$TypeLocator$ForType;,
        Lnet/bytebuddy/implementation/bind/annotation/Default$Binder$TypeLocator$ForParameterType;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription;
.end method
