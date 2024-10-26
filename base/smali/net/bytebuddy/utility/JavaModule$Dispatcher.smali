.class public interface abstract Lnet/bytebuddy/utility/JavaModule$Dispatcher;
.super Ljava/lang/Object;
.source "JavaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;,
        Lnet/bytebuddy/utility/JavaModule$Dispatcher$Enabled;,
        Lnet/bytebuddy/utility/JavaModule$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract addReads(Ljava/lang/instrument/Instrumentation;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract canRead(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract getClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;
.end method

.method public abstract getName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getResourceAsStream(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract isAlive()Z
.end method

.method public abstract isNamed(Ljava/lang/Object;)Z
.end method

.method public abstract moduleOf(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaModule;"
        }
    .end annotation
.end method
