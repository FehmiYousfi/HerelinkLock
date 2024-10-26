.class public interface abstract Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver;
.super Ljava/lang/Object;
.source "NamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy$SuffixingRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseNameResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForFixedValue;,
        Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForGivenType;,
        Lnet/bytebuddy/NamingStrategy$SuffixingRandom$BaseNameResolver$ForUnnamedType;
    }
.end annotation


# virtual methods
.method public abstract resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
.end method
