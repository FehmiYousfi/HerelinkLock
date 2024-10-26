.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassInjector;
.super Ljava/lang/Object;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;
    }
.end annotation


# static fields
.field public static final ALLOW_EXISTING_TYPES:Z = false


# virtual methods
.method public abstract inject(Ljava/util/Map;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method
