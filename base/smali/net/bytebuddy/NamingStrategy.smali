.class public interface abstract Lnet/bytebuddy/NamingStrategy;
.super Ljava/lang/Object;
.source "NamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/NamingStrategy$PrefixingRandom;,
        Lnet/bytebuddy/NamingStrategy$SuffixingRandom;,
        Lnet/bytebuddy/NamingStrategy$AbstractBase;
    }
.end annotation


# virtual methods
.method public abstract rebase(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
.end method

.method public abstract redefine(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
.end method

.method public abstract subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;
.end method
